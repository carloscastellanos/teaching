const int btnPin = 2; // digital input

void setup() {
   // configure the serial connection
   Serial.begin(9600);
   // configure the digital input
   pinMode(btnPin, INPUT);
}

void loop() {
   // read the sensor & map it to a range of 0-255
   int sensorValue = analogRead(A0);
   // print the results
   Serial.print(sensorValue);
   Serial.print(",");

   // read the sensor & map it to a range of 0-255
   sensorValue = analogRead(A1);
   // print the results
   Serial.print(sensorValue);
   Serial.print(",");

   // read the button
   sensorValue = digitalRead(btnPin);
   // print the results
   Serial.println(sensorValue);
}
