#define ARRAY_SIZE(X) (sizeof(X)/sizeof(*X))
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
    time_output= millis()+REBOUNDTIME;
    if(DEBUG)Serial.print(name);
    if(DEBUG)Serial.print(" (");
    if(DEBUG)Serial.print(number);
    if(DEBUG)Serial.print(") changed to ");
    if(DEBUG)Serial.print(pinstate ? "HIGH" : "LOW");
    if(DEBUG){Serial.print(" pulse: ");Serial.println(pulse);}
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

void contadorPcintSetup(){
  for (int i=0; i<ARRAY_SIZE(monitored_pins); i++) {
    monitored_pins[i].begin();
  }
}

void contadorPcintEnd(){
  for (int i=0; i<ARRAY_SIZE(monitored_pins); i++) {
    monitored_pins[i].end();
  }
}

void build_pulses_message() {
  int numberOfDevices = ARRAY_SIZE(monitored_pins);
  String message_to_tx ="";
  
  for(int i=0;i<numberOfDevices; i++){
    
    uint32_t pulseA = monitored_pins[i].pulse;
    
    String name_18 = monitored_pins[i].name;
    String value_18 = String(pulseA);
    
    if (DEBUG) Serial.println(name_18 + ":" + value_18);
    message_to_tx += name_18 + ":" + value_18 ;
    if (i != (numberOfDevices -1)) {message_to_tx +=",";}   
  }
  if (DEBUG) Serial.println(F("message_to_tx: "));
  if(message_to_tx != "")Serial.println(message_to_tx);
  delay(1000);

}
