

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

uint8_t sensorsNumM[oneWireCount]={};
uint8_t addressM[oneWireCount][6][8]={};

uint32_t tempValueM[oneWireCount][6];
uint16_t tempSamplesM[oneWireCount][6];

uint8_t busR = 0; // bus Routine
uint8_t devR = 0; // device Routine


// **************************
// Funciones
// **************************

void temperatureSensorsBegin();
void getAdresses();
void doConversion();
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
  busR = 0; devR = 0;
  delay(100);
  
}

void getAdresses() {
  DeviceAddress tempDeviceAddress;
  for (uint8_t b = 0; b < oneWireCount; b++){

    sensorsNumM[b] = busM[b].getDeviceCount();
    if(DEBUG){Serial.print(F("number Of Devices: "));Serial.println(sensorsNumM[b]);}

    for(int i=0;i<sensorsNumM[b]; i++){
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
    // busM[b].setWaitForConversion(true);
    //delay(100);
  }
}

void build_temperature_message() {
  // busR=0;
  // numberOfDevices = sensorsNumM[busR];
  String message_to_tx ="";
  
  for(int i=0;i<sensorsNumM[busR]; i++){
    if (DEBUG) {Serial.print(F("tempValueM[busR][i]: ")); Serial.println(tempValueM[busR][i]);}
    if (DEBUG) {Serial.print(F("tempSamplesM[busR][i]: ")); Serial.println(tempSamplesM[busR][i]);}
    
 
    float tempC = busM[busR].rawToCelsius(tempValueM[busR][i]/tempSamplesM[busR][i]);
    
    message_to_tx += printShortA(addressM[busR][i]);
    message_to_tx += ":";
    message_to_tx += String(tempC,1);
    if (i != (sensorsNumM[busR] -1)) {message_to_tx +=",";} 
       
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
            tempValueM[busR][devR] += temp;
            tempSamplesM[busR][devR]++;
            devR++;  
            if (DEBUG) Serial.println(temp);
          }
          else {busR++; devR=0;} 
        }
        else{ next_task = 0;}
        break;

      case 3:
        busR=0; devR=0;
        next_task=4;
        break;
                
      case 4:
        if(busR < oneWireCount){
          build_temperature_message();
          busR++;
          next_task=4;
        }
        else{resetTemperatures();next_task=0;}
        break;
        
      default:
        // statements
        break;
    } // switch
  }// doStep
};// struct

temperatureStep TemperatureStep = {0,millis()};

void resetTemperatures(){
  for (uint8_t b = 0; b < oneWireCount; b++){
    for(int i=0;i<sensorsNumM[b]; i++){
      tempValueM[b][i] = 0;
      tempSamplesM[b][i] = 0;
      if(DEBUG){Serial.print(F("tempValueM, tempSamplesM =0 "));Serial.println(printAddress(addressM[b][i]));}
    }
  }
}

/********FIN contador step *************/


#endif
