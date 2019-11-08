/*
  Analog smoothing using a weighted average (low-pass) filter

  Based upon code by Tom Igoe
 
 
 This program reads an analog input and smoothes out the result using a
 weighted average filter. It works by taking a weighted average of the
 current reading and the average of the previous readings.
 
 Here is the the formula:
 filteredValue = weight * rawValue + (1-weight) * previousFilteredValue
 
 The variable weight is a value between 0 and 1 that indicates
 how important or reliable the new raw value is.
 If it’s 100% reliable, weight = 1, and no filtering is done.
 If it’s totally unreliable, weight = 0  and the raw result is filtered out.
 
 
 In this example, a second analog reading, (e.g. a potentiometer) is used
 to set the weight. When this sensor is set high, the average is weighted
 in favor of the current reading, and almost no smoothing is done. 
 When the value is low, the average is weighted in favor of the previous reading(s)
 and the current reading affects the average very little.
 
 n.b. the variable "prevEstimate" needs to be a global, since it's modified
 each time a new filtering is done.  So if you want to use this for multiple
 inouts, you'll need a "prevEstimate" variable for each input.
 
 November 7 2019
 
 */
const int sensorPin = A0;
const int weightPin = A1;
float prevEstimate = 0;      // previous result

void setup() {
  Serial.begin(9600);
}

void loop() {
  // read the sensor:
  int sensorVal = analogRead(sensorPin);
  // convert to voltage: (not required, can just use sensorVal as the raw value)
  float voltage = 5.0 * sensorVal / 1023.0;
  // read the trim pot:
  float weightVal = analogRead(weightPin)/1023.0;
   
  // filter the sensor's result:
  float currEstimate = filter(voltage, weightVal, prevEstimate);
  // print the result:
  Serial.println(currEstimate);
  // save the current result for future use:
  prevEstimate = currEstimate;
}

// filter the current result using a weighted average filter:
float filter(float rawValue, float weight, float prevValue) {
  // run the filter:
  float result = weight * rawValue + (1.0 - weight) * prevValue;
  // return the result:
  return result;
}
