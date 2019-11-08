int prevSensorVal = 0;   // sensor's previous value
int threshold = 500;     // arbitrary threshold
 
void setup() {
  Serial.begin(9600);
}
 
void loop() {
  // read the sensor:
  int sensorVal = analogRead(A0);
 
  // if it's above the threshold:
  if (sensorVal >= threshold) {
    // check that the previous value was below the threshold:
     if (prevSensorVal < threshold) {
        // the sensor just crossed the threshold
        Serial.println("Sensor crossed the threshold!");
     }
  }
  // save value for next comparison:
  prevSensorVal = sensorVal;
}
