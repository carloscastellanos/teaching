int peakVal = 0;
const int threshold = 50;
const int noise = 5;
 
void setup() {
  analogReference(EXTERNAL);
  Serial.begin(9600);
}
 
void loop() {
  //read sensor
  int sensorVal = analogRead(A1);
  
  // check if it's higher than the current peak:
  if (sensorVal > peakVal) {
    peakVal = sensorVal;
  }
  if (sensorVal <= threshold - noise) {
    if (peakVal > threshold + noise) {
      // you have a peak value:
      Serial.println(peakVal);
      // reset the peak variable:
      peakVal = 0;
    }
  }
}
