
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

void getAdresses();
void conversion();
void getTemperature();
void build_temperature_message();
String printName(DeviceAddress deviceAddress);
void printResoltion(DeviceAddress deviceAddressPr);
String printAddress(DeviceAddress deviceAddressPa);
void temperatureSensorsBegin();
void copiaDevice(DeviceAddress, uint8_t *);
int freeRam();




OneWire oneWire_0(ONE_WIRE_BUS_0);
OneWire oneWire_1(ONE_WIRE_BUS_1);
OneWire oneWire_2(ONE_WIRE_BUS_2);


DallasTemperature sensors_m_0(&oneWire_0);
DallasTemperature sensors_m_1(&oneWire_1);
DallasTemperature sensors_m_2(&oneWire_2);
DallasTemperature buses18[]={sensors_m_0,sensors_m_1,sensors_m_2};


DeviceAddress tempDeviceAddress;

typedef uint8_t addressMatrix[6][8];
int16_t value18Matrix[6];

addressMatrix addressMatrix0;
addressMatrix addressMatrix1;
addressMatrix addressMatrix2;
addressMatrix addressMatrixM = {addressMatrix0,addressMatrix1,addressMatrix2};


struct bus{
  DallasTemperature * temperatureBus;
  uint8_t sensorsNum;
  addressMatrix * addressVector;
}bus0,bus1,bus2;

bus * buses[]={&bus0,&bus1,&bus2};

String temperatureString = ("");
uint8_t numberOfDevices=0;
uint32_t t_last_tx;


void setup() {

  Serial.begin(BPS);

  Serial.println("Inicio del microcontrolador. Prueba de tiempos");

  temperatureSensorsBegin();
  t_last_tx= millis();

  delay(100);
}

void loop() {
  uint32_t current_time= millis();
  if ((current_time - t_last_tx) > 9000){
    
    Serial.print(F("******Print LCD - sgs: "));
    Serial.println(millis() / 1000);
    Serial.print(F("freeRam(): "));
    Serial.println(freeRam());
    
    t_last_tx = current_time;
    conversion();
    getTemperature();
    build_temperature_message();
  }
}

void temperatureSensorsBegin() {

  bus0.temperatureBus=&sensors_m_0;
  bus1.temperatureBus=&sensors_m_1;
  bus2.temperatureBus=&sensors_m_2;

  bus0.addressVector = &addressMatrix0;
  bus1.addressVector = &addressMatrix1;
  bus2.addressVector = &addressMatrix2;

      
  bus0.temperatureBus->begin();
  bus1.temperatureBus->begin();
  bus2.temperatureBus->begin();

  getAdresses();
  
}
void conversion() {
  for (uint8_t b = 0; b < 3; b++){
    bus * bus_ = buses[b];
    bus_->temperatureBus->setWaitForConversion(false);
    bus_->temperatureBus->requestTemperatures();
    bus_->temperatureBus->setWaitForConversion(true);
    delay(1000);
  }
}


void getAdresses() {
  for (uint8_t b = 0; b < 3; b++){

    bus * bus_ = buses[b];

    numberOfDevices = bus_->temperatureBus->getDeviceCount();
    bus_->sensorsNum= numberOfDevices;
    
    for(int i=0;i<numberOfDevices; i++){
      bus_->temperatureBus->getAddress(tempDeviceAddress, i); 
      copiaDevice(tempDeviceAddress, bus_->addressVector[i][i*8]);
    }
  }
}

void getTemperature() {
  for (uint8_t b = 0; b < 3; b++){
    bus * bus_ = buses[b];
    numberOfDevices = bus_->sensorsNum;
    
    for(int i=0;i<numberOfDevices; i++){
      
      int temp = bus_->temperatureBus->getTemp(bus_->addressVector[i][(i*8)]);
      
      value18Matrix[i] = temp;
       
      //bus_->value18Vector[i] = tempC;    
      
      String value_18 = String(value18Matrix[i]);
      String name_18 = printName(bus_->addressVector[i][(i*8)]);
      
      if (DEBUG) Serial.println(name_18 + ":" + value_18);

    }
    delay(1000);
  }
}


void build_temperature_message() {
  for (uint8_t b = 0; b < 3; b++){
    bus * bus_ = buses[b];
    numberOfDevices = bus_->sensorsNum;
    String message_to_tx ="";
    
    for(int i=0;i<numberOfDevices; i++){
      
      float tempC = bus_->temperatureBus->rawToCelsius(value18Matrix[i]);
      
      String name_18 = printName(bus_->addressVector[i][(i*8)]);
      String value_18 = String(tempC);
      
      if (DEBUG) Serial.println(name_18 + ":" + value_18);
      message_to_tx += name_18 + ":" + value_18 ;
      if (i != (numberOfDevices -1)) {message_to_tx +=",";}
      if (DEBUG) Serial.println("message_to_tx: ");
      if (DEBUG) Serial.println(message_to_tx);
      
    }
    if (DEBUG) Serial.println("message_to_tx: ");
    if (DEBUG) Serial.println(message_to_tx);
    delay(1000);
  }
}

/*
void build_temperature_message() {
  for (uint8_t b = 0; b < 3; b++){
    bus * bus_ = buses[b];
    numberOfDevices = bus_->sensorsNum;
    String message_to_tx ="";
    
    for(int i=0;i<numberOfDevices; i++){
      
      float tempC = bus_->temperatureBus->getTempC(bus_->addressVector[i][(i*8)]);    
      String value_18 = String(tempC,1);
      String name_18 = printName(bus_->addressVector[i][(i*8)]);
      
      if (DEBUG) Serial.println(name_18 + ":" + value_18);
      message_to_tx = message_to_tx + name_18 + ":" + value_18 ;
      if (i != (numberOfDevices -1)) {message_to_tx +=",";}

    }
    delay(1000);
  }
}
*/


String printName(DeviceAddress deviceAddress){
  String temp_sensor_name;
  temp_sensor_name = printAddress(deviceAddress);
  return temp_sensor_name;
}

void printResoltion(DeviceAddress deviceAddressPr){
  temperatureString += (sensors_m_0.getResolution(deviceAddressPr), DEC);
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
    //deviceAddressDest++ ;
    //deviceAddressOr++ ;
    arrayIndex++ ;
  }
}

int freeRam(){
  extern int __heap_start, *__brkval;
  int v;
  return (int) &v - (__brkval == 0 ? (int) &__heap_start : (int) __brkval);
}
