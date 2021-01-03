
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

#include <SoftwareSerial.h>
#define RXPIN 12    //11
#define TXPIN 11    //12
SoftwareSerial wifiSerialInit (RXPIN,TXPIN);

void build_temperature_message();
String printName(DeviceAddress deviceAddress);
void printResoltion(DeviceAddress deviceAddressPr);
String printAddress(DeviceAddress deviceAddressPa);
void temperatureSensorsBegin();
void copiaDevice(DeviceAddress, uint8_t *);



OneWire oneWire_0(ONE_WIRE_BUS_0);
OneWire oneWire_1(ONE_WIRE_BUS_1);
OneWire oneWire_2(ONE_WIRE_BUS_2);


DallasTemperature sensors_m_0(&oneWire_0);
DallasTemperature sensors_m_1(&oneWire_1);
DallasTemperature sensors_m_2(&oneWire_2);

DeviceAddress tempDeviceAddress;

typedef uint8_t addressMatrix[6][8];

addressMatrix addressMatrix0;
addressMatrix addressMatrix1;
addressMatrix addressMatrix2;

struct bus{
  DallasTemperature * temperatureBus;
  uint8_t sensorsNum;
  addressMatrix * addressVector; 
}bus0,bus1,bus2;

bus * buses[]={&bus0,&bus1,&bus2};

String temperatureString = ("");
uint8_t numberOfDevices=0;
uint32_t t_last_tx;

void build_temperature_message() {
  for (uint8_t b = 0; b < 3; b++){

    bus * bus_ = buses[b];
    
    // Medidas de tiempo
    uint32_t t_previo_n;   
    uint32_t t_post_n;
    uint32_t t_previo_r;

    t_previo_r = micros();   

    // sensors_m_->requestTemperatures();
    // sensors_m_->setWaitForConversion(false);  // makes it async
    bus_->temperatureBus->setWaitForConversion(false);

    //sensors_m_->requestTemperatures();
    bus_->temperatureBus->requestTemperatures();

    
    //sensors_m_->setWaitForConversion(true);
    bus_->temperatureBus->setWaitForConversion(true);

 
    t_previo_n = micros();

    // numberOfDevices = sensors_m_->getDeviceCount();
    numberOfDevices = bus_->temperatureBus->getDeviceCount();
    
    
    t_post_n = micros();

    if (DEBUG) Serial.print(F("**** buildTemperatureMessage_ "));
    if (DEBUG) Serial.println(b);
    if (DEBUG) Serial.print(F("numberOfDevices = "));
    if (DEBUG) Serial.println(numberOfDevices);

    if (DEBUG) Serial.println(F("*** tiempos_requestTemperatures"));
    if (DEBUG) Serial.println(t_previo_r);
    if (DEBUG) Serial.println(t_previo_n);
    if (DEBUG) Serial.println(t_post_n);
    if (DEBUG) Serial.print(F("diferencia requestTemperatures(): "));
    if (DEBUG) Serial.println(t_previo_n - t_previo_r);  
    if (DEBUG) Serial.print(F("diferencia getDeviceCount: "));
    if (DEBUG) Serial.println(t_post_n - t_previo_n);   



    String message_to_tx ="";
    for(int i=0;i<numberOfDevices; i++){

      // Medidas de tiempo
      uint32_t t_previo_t;   
      uint32_t t_post_t;
      uint32_t t_post_g;
      uint32_t t_previo_g;
  
      t_previo_g = micros();  
      // sensors_m_->getAddress(tempDeviceAddress, i);
      bus_->temperatureBus->getAddress(tempDeviceAddress, i);
      

      
      t_post_g = micros();

      uint8_t deviceAddressDest0[8];
      copiaDevice(tempDeviceAddress, deviceAddressDest0);
      // bus0.addressVector = &addressMatrix0;
      
      copiaDevice(tempDeviceAddress, bus0.addressVector[0][0]);

     

       if (DEBUG) Serial.println(F("*** tiempos_getAddress "));
       if (DEBUG) Serial.println(t_previo_g);
       if (DEBUG) Serial.println(t_post_g);
       if (DEBUG) Serial.print(F("diferencia t: "));
       if (DEBUG) Serial.println(t_post_g - t_previo_g);  


       if(tempDeviceAddress){
       //if(sensors_m_->getAddress(tempDeviceAddress, i)){
         
         t_previo_t= micros();  



         /*
        struct bus{
          DallasTemperature * temperatureBus;
          uint8_t sensorsNum;
          addressMatrix * addressVector; 
        }bus0,bus1,bus2;
         
         */
   
         // float tempC = bus_->temperatureBus->getTempC(tempDeviceAddress);
         float tempC = bus_->temperatureBus->getTempC(bus0.addressVector[0][0]);
         

         t_post_t= micros();

         if (DEBUG) Serial.print(F("device number= "));
         if (DEBUG) Serial.println(i);

         if (DEBUG) Serial.println(F("*** tiempos_getTempC "));
         if (DEBUG) Serial.println(t_previo_t);
         if (DEBUG) Serial.println(t_post_t);
         if (DEBUG) Serial.print(F("diferencia t: "));
         if (DEBUG) Serial.println(t_post_t - t_previo_t);  
       
         String value_18 = String(tempC,1);
         String name_18 = printName(tempDeviceAddress);

         String name_19 = printName(deviceAddressDest0);
         if (DEBUG) Serial.println(name_19);
         if (DEBUG) Serial.println(name_18 + ":" + value_18);
         message_to_tx = message_to_tx + name_18 + ":" + value_18 ;
         if (i != (numberOfDevices -1)) {message_to_tx +=",";}
       }
    }
    Serial.println(message_to_tx);
    if (message_to_tx != "") { wifiSerialInit.println (message_to_tx);}
    delay(1000);
  }
}

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

  }

void setup() {
  delay(2000);

  Serial.begin(BPS);
  wifiSerialInit.begin(BPS);  // puerto serie al esp12

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
    t_last_tx = current_time;
    build_temperature_message();
  }
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
