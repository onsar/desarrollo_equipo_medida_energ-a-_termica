
#ifndef contador_pcint_h
#define contador_pcint_h

#define MAXTIME 4294967295
#define REBOUNDTIME 60

#include <YetAnotherPcInt.h>

/*****  Declaracion de funciones */

struct PinListener {
  uint8_t number;
  const char* name;
  uint32_t pulse;
  uint32_t time_output ;

  void begin();
  void end();
   
private:
  void changed(bool pinstate);
  static void changed(PinListener* _this, bool pinstate);
};

void contadorPcintSetup();

void build_pulses_message();

void allowPcintPending();

struct counterStep{
  uint8_t next_task;
  void doStep();
};


/*****  Definicion  de funciones */

void PinListener::begin() {
  pinMode(number, INPUT_PULLUP);
  PcInt::attachInterrupt(number, PinListener::changed, this, CHANGE);
}

void PinListener::end() {
  PcInt::detachInterrupt(number);
}

void PinListener::changed(bool pinstate) {
  if(pinstate==0) pulse++;
  this->end();
  time_output= millis()+REBOUNDTIME;
  if(DEBUG)Serial.print(name);
  if(DEBUG)Serial.print(" changed to ");
  if(1)Serial.print(pinstate ? "HI " : "LO ");
  if(1){Serial.println(pulse);}
}
  
static void PinListener::changed(PinListener* _this, bool pinstate) {
  _this->changed(pinstate);
}

PinListener monitored_pins[] = {
  {2,"e4",0,MAXTIME},
  {3,"e3",0,MAXTIME},
  {4,"e2",0,MAXTIME},
  {5,"e1",0,MAXTIME},
};

const uint8_t pcintPins = sizeof(monitored_pins)/sizeof(*monitored_pins);

void contadorPcintSetup(){
  for (int i=0; i<pcintPins; i++) {
    monitored_pins[i].begin();
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

void counterStep::doStep(){
  switch (next_task) {
    case 0:
        allowPcintPending();
      break;     
    case 1:
      allowPcintPending();
      build_pulses_message();
      allowPcintPending();
      next_task=0;
      break;
    default:
      // statements
      break;
  }
}

counterStep CounterStep = {0};

#endif
