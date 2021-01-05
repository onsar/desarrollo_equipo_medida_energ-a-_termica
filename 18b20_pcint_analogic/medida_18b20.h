




#ifndef medida_18b20_h
#define medida_18b20_h

// *******************************************************
// ******** CONFIGURACION DE LOS BUSES DE 18B20   ********
// *******************************************************

#define WIRE_0 17 // A3
#define WIRE_1 18 // A4
#define WIRE_2 19 // A5


// *******************************************************

#include <OneWire.h>
#include <DallasTemperature.h>


OneWire ds18x20[] = { WIRE_0, WIRE_1,WIRE_2 };

const int oneWireCount = sizeof(ds18x20)/sizeof(OneWire);

DallasTemperature busM[oneWireCount];

DeviceAddress tempDeviceAddress;

uint8_t addressM[oneWireCount][6][8]={};

uint8_t numberOfDevices=0;

uint8_t sensorsNumM[]={0,0,0};

uint32_t tempValueM[3][6];
uint16_t tempSamplesM[3][6];

uint8_t busR = 0; // bus Routine

uint8_t devR = 0; // device Routine


// **************************
// Funciones
// **************************

void temperatureSensorsBegin();
void getAdresses();
void doConversion();
void doTemperatureStep();
void getTemperatureInit();
void build_temperature_message();
String printAddress(DeviceAddress deviceAddressPa);
String printShortA(DeviceAddress deviceAddressPa);
void copiaDevice(DeviceAddress, uint8_t *);
void resetTemperatures();


void temperatureSensorsBegin() {

  for (int i = 0; i < oneWireCount; i++) {;
    busM[i].setOneWire(&ds18x20[i]);
    busM[i].begin();
  }

  getAdresses();
  doConversion();
  delay(100);
  getTemperatureInit();
  
}

void getAdresses() {
  for (uint8_t b = 0; b < 3; b++){

    numberOfDevices = busM[b].getDeviceCount();
    sensorsNumM[b]= numberOfDevices;
    if(DEBUG){Serial.print(F("numberOfDevices: "));Serial.println(sensorsNumM[b]);}

    for(int i=0;i<numberOfDevices; i++){
      busM[b].getAddress(tempDeviceAddress, i); 
      if(DEBUG){Serial.print(F("tempDeviceAddress: "));Serial.println(printAddress(tempDeviceAddress));}
      
      copiaDevice(tempDeviceAddress, addressM[b][i]);
      if(DEBUG){Serial.print(F("addressM[b][i]: "));Serial.println(printAddress(addressM[b][i]));}
    }
  }
}


void doConversion() {
  //contadorPcintEnd();
  for (uint8_t b = 0; b < 3; b++){
    busM[b].setWaitForConversion(false);
    busM[b].requestTemperatures();
    busM[b].setWaitForConversion(true);
    //delay(100);
  }
}

void getTemperatureInit() {
  busR = 0; // bus Routine
  devR = 0; // device Routine
  if(DEBUG){Serial.print("busR: ");Serial.println(busR);}
  if(DEBUG){Serial.print("devR: ");Serial.println(devR);}
}

void doTemperatureStep() {
  //if(DEBUG){Serial.print(busR);}
  
  if(busR < oneWireCount){
    
    if(devR < sensorsNumM[busR]){
      int16_t temp = busM[busR].getTemp(addressM[busR][devR]);
      tempValueM[busR][devR] = temp;
      devR++;
      
      Serial.println(temp);
    }
    else {
      build_temperature_message();
      busR++ ; devR=0;
    } 
    
  }// if(busR)
}

void build_temperature_message() {
  numberOfDevices = sensorsNumM[busR];
  String message_to_tx ="";
  
  for(int i=0;i<numberOfDevices; i++){
    
    float tempC = busM[busR].rawToCelsius(tempValueM[busR][i]);
    
    message_to_tx += printShortA(addressM[busR][i]);
    message_to_tx += ":";
    message_to_tx += String(tempC,1);
    if (i != (numberOfDevices -1)) {message_to_tx +=",";} 
       
  }
  if (DEBUG) Serial.println(F("message_to_tx: "));
  if(message_to_tx != "")Serial.println(message_to_tx);
}

String printAddress(DeviceAddress deviceAddressPa){
  String string_temp_r="";
  for (uint8_t i = 0; i < 8; i++){
    if (deviceAddressPa[i] < 16) string_temp_r += ("0");
    uint8_t temp= (deviceAddressPa[i]);
    String stringTemp =  String(temp, HEX);
    string_temp_r = string_temp_r +stringTemp;
  }
  return string_temp_r;
}

String printShortA(DeviceAddress deviceAddressPa){
  String stringShort="";
  for (uint8_t i = 1; i < 3; i++){
    if (deviceAddressPa[i] < 16) stringShort += ("0");
    uint8_t temp= deviceAddressPa[i];
    stringShort += String(temp, HEX);
  }
  return stringShort;
}

void copiaDevice(DeviceAddress deviceAddressOr, uint8_t * deviceAddressDest){
  unsigned char arrayIndex = 0 ;
  while(arrayIndex < 8) {
    deviceAddressDest[arrayIndex] = deviceAddressOr[arrayIndex] ;
    arrayIndex++ ;
  }
}


/*
 * 
Media de Temperatura
====================
La medida de temperatura se hace con sensores ds18b20
* La conversion lleva casi 1 segundo.
* Se realiza una conversion antes de cada pregunta: Case 0
* La temporizacion de la conversión se hace mediante registro de tiempo: case 1
* Mientras la conversion otras tareas son ejecutadas
* El tiempo de comunicación de la temperatura es de 14ms: case 2
* Transmitir las temperaturas es otra tarea: case 3

*/

/******* contador step *****************/
// => comprobar que la variable estática funciona bien

struct temperatureStep{
  uint8_t  next_task;
  uint32_t time_output;
  
  void doStep(){
    switch (next_task) {
      case 0:
        doConversion();
        busR =0; devR=0;
        
        resetTemperatures();

        
        time_output= millis()+1000;
        next_task =1;
        break;
        
      case 1:
        if(millis()>time_output) next_task = 2;
        else next_task =1;
        break;
        
      case 2:
        if(busR < oneWireCount){
          if(devR < sensorsNumM[busR]){
            int16_t temp = busM[busR].getTemp(addressM[busR][devR]);
            tempValueM[busR][devR] = temp;
            tempSamplesM[busR][devR]++;
            devR++;  
            Serial.println(temp);
          }
          else {
            busR++ ; devR=0;
          } 
        }// if(busR)
        
        else{
           next_task = 0;               
        }
        break;
        
      case 3:
        build_temperature_message();
        next_task=0;
        break;
        
      default:
        // statements
        break;
    } // switch
  }// doStep
};// struct

temperatureStep TemperatureStep = {0};

void resetTemperatures(){
  
    for (uint8_t b = 0; b < oneWireCount; b++){

    if(DEBUG){Serial.print(F("numberOfDevices: "));Serial.println(sensorsNumM[b]);}

    for(int i=0;i<sensorsNumM[b]; i++){
      tempValueM[b][i] = 0;
      tempSamplesM[b][i] = 0;
      if(DEBUG){Serial.print(F("tempValueM, tempSamplesM =0 "));Serial.println(printAddress(addressM[b][i]));}
    }
  }
}

/********FIN contador step *************/










#endif
