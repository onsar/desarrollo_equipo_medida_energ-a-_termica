

#define PCINT_PIN 14
#include <YetAnotherPcInt.h>


int freeRam(){
  extern int __heap_start, *__brkval;
  int v;
  return (int) &v - (__brkval == 0 ? (int) &__heap_start : (int) __brkval);
}

void pinChanged(const char* message, bool pinstate) {
  Serial.print(message);
  Serial.println(pinstate ? "HIGH" : "LOW");
  Serial.println(freeRam());
}

void setup() {
  Serial.begin(115200);
  pinMode(PCINT_PIN, INPUT_PULLUP);
  PcInt::attachInterrupt(PCINT_PIN, pinChanged, "Pin has changed to ", CHANGE);
}

void loop() {}
