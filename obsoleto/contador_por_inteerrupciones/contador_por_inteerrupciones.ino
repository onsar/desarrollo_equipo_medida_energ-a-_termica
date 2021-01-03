
#define DEBUG 1

#include "contador_pcint.h"

void setup() {
  Serial.begin(115200);
  contadorPcintSetup();
}

void loop() {
  for (int i=0; i<ARRAY_SIZE(monitored_pins); i++) {
    if(millis() > monitored_pins[i].time_output){ monitored_pins[i].begin();}   
  }
}
