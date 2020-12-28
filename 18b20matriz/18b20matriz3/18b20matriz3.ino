
#define DEBUG 1

#define BPS 115200

#define ONE_WIRE_BUS_0 17 // A3
#define ONE_WIRE_BUS_1 18 // A4
#define ONE_WIRE_BUS_2 19 // A5

// Lower resolution
#define TEMPERATURE_PRECISION 9

// *******************************************************

#include <OneWire.h>
#include <DallasTemperature.h>

OneWire oneWire_0(ONE_WIRE_BUS_0);
OneWire oneWire_1(ONE_WIRE_BUS_1);
OneWire oneWire_2(ONE_WIRE_BUS_2);

DallasTemperature bus0(&oneWire_0);
DallasTemperature bus1(&oneWire_1);
DallasTemperature bus2(&oneWire_2);
DallasTemperature * busM[]={&bus0,&bus1,&bus2};

// typedef uint8_t DeviceAddress[8];
DeviceAddress tempDeviceAddress;

uint8_t addressM[3][6][8]={};

uint8_t numberOfDevices=0;
uint8_t sensorsNumM[]={0,0,0};

int16_t tempValueM[3][6];

uint32_t t_last_tx;


// **************************
// Funciones
// **************************

void temperatureSensorsBegin();
void getAdresses();
void doConversion();
void getTemperature();
void build_temperature_message();
String printName(DeviceAddress deviceAddress);
String printAddress(DeviceAddress deviceAddressPa);
void copiaDevice(DeviceAddress, uint8_t *);


void setup() {

  Serial.begin(BPS);

  Serial.println(F("Inicio del microcontrolador. Prueba de tiempos"));

  temperatureSensorsBegin();
  
  t_last_tx= millis();

  delay(100);
}

void loop() {
  uint32_t current_time= millis();
  if ((current_time - t_last_tx) > 9000){
    
    Serial.print(F("******Print LCD - sgs: "));
    Serial.println(millis() / 1000);
    
    t_last_tx = current_time;
    doConversion();
    getTemperature();
    build_temperature_message();
  }
}

void temperatureSensorsBegin() {

  bus0.begin();
  bus1.begin();
  bus2.begin();

  delay(1000);

  getAdresses();
  
}

void getAdresses() {
  for (uint8_t b = 0; b < 3; b++){

    numberOfDevices = busM[b]->getDeviceCount();
    sensorsNumM[b]= numberOfDevices;
    if(DEBUG){Serial.print(F("numberOfDevices: "));Serial.println(sensorsNumM[b]);}

    for(int i=0;i<numberOfDevices; i++){
      busM[b]->getAddress(tempDeviceAddress, i); 
      if(DEBUG){Serial.print(F("tempDeviceAddress: "));Serial.println(printAddress(tempDeviceAddress));}
      
      copiaDevice(tempDeviceAddress, addressM[b][i]);
      if(DEBUG){Serial.print(F("addressM[b][i]: "));Serial.println(printAddress(addressM[b][i]));}
    }
  }
}


void doConversion() {
  for (uint8_t b = 0; b < 3; b++){
    
    busM[b]->setWaitForConversion(false);
    busM[b]->requestTemperatures();
    busM[b]->setWaitForConversion(true);
    delay(1000);
  }
}

void getTemperature() {
  for (uint8_t b = 0; b < 3; b++){

    numberOfDevices = sensorsNumM[b];
    
    for(int i=0;i<numberOfDevices; i++){
      
      int16_t temp = busM[b]->getTemp(addressM[b][i]);

      tempValueM[b][i] = temp;

      if(DEBUG) Serial.println(temp);

    }
    delay(1000);
  }
}


// uint8_t sensorsNumM[]={0,0,0};
// tempValueM[b][i] = temp;
// DallasTemperature * busM[]={&bus0,&bus1,&bus2};
// uint8_t addressM[3][6][8]={};

void build_temperature_message() {
  for (uint8_t b = 0; b < 3; b++){
    numberOfDevices = sensorsNumM[b];
    String message_to_tx ="";
    
    for(int i=0;i<numberOfDevices; i++){
      
      float tempC = busM[b]->rawToCelsius(tempValueM[b][i]);
      
      String name_18 = printAddress(addressM[b][i]);
      String value_18 = String(tempC);
      
      if (DEBUG) Serial.println(name_18 + ":" + value_18);
      message_to_tx += name_18 + ":" + value_18 ;
      if (i != (numberOfDevices -1)) {message_to_tx +=",";}   
    }
    if (DEBUG) Serial.println(F("message_to_tx: "));
    if (DEBUG) Serial.println(message_to_tx);
    delay(1000);
  }
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

void copiaDevice(DeviceAddress deviceAddressOr, uint8_t * deviceAddressDest){
  unsigned char arrayIndex = 0 ;
  while(arrayIndex < 8) {
    deviceAddressDest[arrayIndex] = deviceAddressOr[arrayIndex] ;
    arrayIndex++ ;
  }
}
