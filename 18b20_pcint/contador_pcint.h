
#ifndef contador_pcint_h
#define contador_pcint_h

#define MAXTIME 4294967295
#define REBOUNDTIME 10

#include <YetAnotherPcInt.h>

struct PinListener {
  uint8_t number;
  const char* name;
  uint32_t pulse;
  uint32_t time_output ;
  
  void begin() {
    pinMode(number, INPUT_PULLUP);
    PcInt::attachInterrupt(number, PinListener::changed, this, CHANGE);
  }
  
  void end() {
    PcInt::detachInterrupt(number);
  }
  
private:
  void changed(bool pinstate) {
    if(pinstate==0) pulse++;
    this->end();
    //delay(10);
    //this->begin();
    time_output= millis()+REBOUNDTIME;
    if(DEBUG)Serial.print(name);
    if(DEBUG)Serial.print(" (");
    if(DEBUG)Serial.print(number);
    if(DEBUG)Serial.print(") changed to ");
    if(1)Serial.print(pinstate ? "HI " : "LO ");
    // if(1){Serial.print(" pulse: ");Serial.println(pulse);}
    if(1){Serial.println(pulse);}
  }
  
  static void changed(PinListener* _this, bool pinstate) {
    _this->changed(pinstate);
  }
};

PinListener monitored_pins[] = {
  {4,"e1",0,MAXTIME},
  {5,"e2",0,MAXTIME},
  {6,"e3",0,MAXTIME},
};

const uint8_t pcintPins = sizeof(monitored_pins)/sizeof(*monitored_pins);

void contadorPcintSetup(){
  for (int i=0; i<pcintPins; i++) {
    monitored_pins[i].begin();
  }
}

void contadorPcintEnd(){
  for (int i=0; i<pcintPins; i++) {
    monitored_pins[i].end();
  }
}

void build_pulses_message() {
  uint8_t numberOfDevices = pcintPins;
  String message_to_tx ="";
  
  for(uint8_t i=0;i<numberOfDevices; i++){
       
    message_to_tx += monitored_pins[i].name;
    message_to_tx += ":";
    message_to_tx += String(monitored_pins[i].pulse);
    if (i != (numberOfDevices -1)) {message_to_tx +=",";}   
    
  }
  if (DEBUG) {Serial.print(F("message_to_tx: "));Serial.println(message_to_tx);}
  if(message_to_tx != "")Serial.println(message_to_tx);

}
void allowPcintPending(){
  for (int i=0; i<pcintPins; i++) {
    if(millis() > monitored_pins[i].time_output){ 
      monitored_pins[i].time_output= MAXTIME;
      monitored_pins[i].begin();
    }   
  }
}

#endif
