/*


Medida continua
===============
Medida contiuna de:   0: Pulsos, 
                      1: Valores Analógicos 
                      2: Temperaturas
                        
* Cada ciclo se hace solo una tarea
* El obhetivo es habilitar las interrupciones a los 10 ms

Al final del ciclo (60.000 ms)
==============================
* Imprimir valores de  0: Pulsos, 
                       1: Valores Analógicos 
                       2: Temperaturas
                        
* Reiniciar registros: 1: Valores Analógicos
    (numero samples)   2: Temperaturas
              

Pulsos
=======
Contados mediante interrupciones PCINT
Cada interrupción inhabilita otras para evitar rebotes
La inhabilitacion es durante 10ms 
Los 10 ms se comprueban cada ciclo
A estos ms hay que sumar el tiempo de las tareas activas
la mas larga es la lectura de temperatura: 14ms

Valores Analógicos
==================
Se suman todos los valores durante el ciclo
El resultado es la media

Media de Temperatura
====================
La medida de temperatura se hace con sensores ds18b20
* La conversion lleva casi 1 segundo
* Se realiza una conversion antes de cada pregunta
* El tiempo de comunicación de la temperatura es de 14ms
* La temporizacion de la conversión se hace mediante registro de tiempo
* Mientras la conversion otras tareas son ejecutadas


















  



*/
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
