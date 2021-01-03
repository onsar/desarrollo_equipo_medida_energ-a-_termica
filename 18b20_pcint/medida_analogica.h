
#ifndef medida_analogica_h
#define medida_analogica_h

uint8_t analogR = 0; // bus Routine
bool analogFlag = 1; // flaf para la ejecución de la rutina

struct PinRead {
    
  uint8_t number;
  const char* name;
  uint8_t scale;
  uint32_t value;
  
// private:
  void analogicRead() {
    value = analogRead(number);

    if(1)Serial.print(name);
    if(1)Serial.print(" ");
    if(1)Serial.println(value);

  }
};

PinRead analogicPins[] = {
  {14,"a1",1,0},
  {15,"a2",1,0},
  {16,"a3",1,0},
};

const uint8_t nAnalogicPins = sizeof(analogicPins)/sizeof(*analogicPins);

void buildAnalogicMessage() {
  String message_to_tx ="";
  
  for(uint8_t i=0;i<nAnalogicPins; i++){
       
    message_to_tx += analogicPins[i].name;
    message_to_tx += ":";
    message_to_tx += String(analogicPins[i].value);
    if (i != (nAnalogicPins -1)) {message_to_tx +=",";}   
    
  }
  if (DEBUG) {Serial.print(F("message_to_tx: "));Serial.println(message_to_tx);}
  if(message_to_tx != "")Serial.println(message_to_tx);
}


doAnalogicStep(){
  if(analogR < nAnalogicPins){
      
    analogicPins[analogR].analogicRead();
    analogR++ ;
    
  }
  else if(analogR == nAnalogicPins) {buildAnalogicMessage(); analogR++ ;}
  else {analogR = 0; analogFlag = 0; }
}


#endif
