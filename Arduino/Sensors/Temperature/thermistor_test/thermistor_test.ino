/*
 * Carlos Castellanos 
 * 2016
 * 
*/

// based on code taken from: https://learn.adafruit.com/thermistor

#define TEMPSENSORPIN A0                       // analog sensor pin
#define VCC 5000                               // VCC (in millivolts)
#define NUM_THERMISTOR_SAMPLES 5               // how many samples to take and average (if using a thermistor), more takes longer but is smoother
#define THERMISTOR_FIXED_RESISTOR_VAL 10000    // the thermistor is set up as a basic voltage divider circuit so we need the value of the fixed resistor
#define THERMISTOR_RESISTANCE_NOMINAL 10000    // resistance at 25 degrees C
#define THERMISTOR_TEMPERATURE_NOMINAL 25      // temp. for nominal resistance (almost always 25 C)
#define BCOEFFICIENT 3950                      // The beta coefficient of our thermistor (usually 3000-4000)
int thermistorSamples[NUM_THERMISTOR_SAMPLES]; // array to hold the thermistor samples

 
void setup(void) {
  Serial.begin(9600);
}
 
void loop(void) {
  uint8_t i;
  float average;
 
  // read the analog sensor pin
  // we take a few of readings in a row and average them, this gives us more accurate results
  // take N samples in a row, with a slight delay
  for (i=0; i< NUM_THERMISTOR_SAMPLES; i++) {
    thermistorSamples[i] = analogRead(TEMPSENSORPIN);
    delay(10);
  }
 
  // average all the samples out
  for (i=0; i< NUM_THERMISTOR_SAMPLES; i++) {
    average += thermistorSamples[i];
  }
  average /= NUM_THERMISTOR_SAMPLES;
 
  Serial.print("Average analog reading "); 
  Serial.println(average);

  // the thermistor is set up as a basic voltage divider circuit
  // we first need to determine the resistance of the thermistor in order to determine the temperature
  // so first convert the voltage coming from the analog pin into a resistance
  average = (1023 / average)  - 1;
  average = THERMISTOR_FIXED_RESISTOR_VAL / average; // THERMISTOR_FIXED_RESISTOR_VAL is the value of the fixed resistor (in ohms)
 
  Serial.print("Thermistor resistance "); 
  Serial.println(average);

  // now we need to convert to temperature
  // we are using the simplified B parameter version of the Steinhart-Hart equation: https://en.wikipedia.org/wiki/Thermistor
  float waterTemp;
  waterTemp = average / THERMISTOR_RESISTANCE_NOMINAL;          // (R/Ro)
  waterTemp = log(waterTemp);                                   // ln(R/Ro)
  waterTemp /= BCOEFFICIENT;                                    // 1/B * ln(R/Ro)
  waterTemp += 1.0 / (THERMISTOR_TEMPERATURE_NOMINAL + 273.15); // + (1/To)
  waterTemp = 1.0 / waterTemp;                                  // Invert
  waterTemp -= 273.15;                                          // convert to C
 
  Serial.print("Temperature "); 
  Serial.print(waterTemp);
  Serial.println(" *C");
 
  delay(1000);
}
