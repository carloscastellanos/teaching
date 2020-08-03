/*
 * AnalogReadSendBytes
 *
 * Example of reading a single analog value and sending the data
 * over the serial port as raw bytes
 * 
 * Carlos Castellanos
 * June 23, 2020
 *
 */

void setup() {
  // start serial port at 9600 bps:
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }
}

void loop() {
  // read the sensor value from pin AO
  // We need to divide the sensor value by 4 to reduce the range
  // to 0 to 255, the range that can fit in a single byte.
  int sensorVal = analogRead(A0) / 4;
  // send the value serially as a binary value (raw byte)
  Serial.write(sensorVal);
}
