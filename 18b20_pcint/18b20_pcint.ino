
#define DEBUG 0

#define BPS 115200

#include "contador_pcint.h"

#include "medida_18b20.h"

#include "medida_analogica.h"

uint32_t t_last_tx;

// bool analogFlag = 1; Esta en el fichero
bool doConversionF = 1;
bool pulsesMessageFlag = 1;



void setup() {

  Serial.begin(BPS);

  Serial.println(F("Inicio medida de temperatura y caudal por pulsos"));

  contadorPcintSetup();

  temperatureSensorsBegin();
  
  t_last_tx= millis();

  delay(100);
}

void loop() {

  allowPcintPending();
  
  doTemperatureStep();
  
  uint32_t current_time= millis();

  if ((current_time - t_last_tx) > 5000){
    if(analogFlag){doAnalogicStep();}
  }
  
  if ((current_time - t_last_tx) > 7000){
    if(doConversionF){doConversion();doConversionF = 0;}
  }

   if ((current_time - t_last_tx) > 8000){
    if(pulsesMessageFlag){build_pulses_message();pulsesMessageFlag = 0;}
  } 
  
 
  if ((current_time - t_last_tx) > 10000){
    
    if(DEBUG)Serial.print(F("******Print LCD - sgs: "));
    if(DEBUG)Serial.println(millis() / 1000);
    
    t_last_tx = current_time;
    getTemperatureInit();
    doConversionF = 1;
    pulsesMessageFlag=1;
    analogFlag = 1;
  }
}
