const int btnPin = 2; // digital input

void setup() {
  // start serial port at 9600 bps
  Serial.begin(9600);
  // configure the digital input
  pinMode(btnPin, INPUT);

  establishContact();  // send data establish contact until receiver responds
}

void loop() {
  // if we get a valid byte, read the sensors
  if (Serial.available() > 0) {
    // read the incoming byte
    int inByte = Serial.read();
  
    // read the analog sensor
    int sensorVal = analogRead(A0);
    // print the results
    Serial.print(sensorVal);
    Serial.print(",");
  
    // read the analog sensor
    sensorVal = analogRead(A1);
    // print the results
    Serial.print(sensorVal);
    Serial.print(",");
    
    // read the button state
    sensorVal = digitalRead(btnPin);
    // print the results:
    Serial.println(sensorVal);
  }
}

void establishContact() {
  while (Serial.available() <= 0) {
    Serial.println("0,0,0");   // send an initial string
    delay(300);
  }
}
