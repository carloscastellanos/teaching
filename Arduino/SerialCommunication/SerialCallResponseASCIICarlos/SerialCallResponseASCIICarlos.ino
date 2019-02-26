/*
  Serial Call and Response in ASCII

based on this tutoirial:

 http://www.arduino.cc/en/Tutorial/SerialCallResponseASCII

 */

int sensorVal = 0;    // analog sensor

String inString = "";

void setup() {
  // start serial port at 9600 bps and wait for port to open:
  Serial.begin(9600);
  while (!Serial) {
    ; // wait for serial port to connect. Needed for native USB port only
  }
  //Serial.setTimeout(25);
  
  establishContact();  // send a byte to establish contact until receiver responds
}

void loop() {
  // if we get a valid byte:
  if (Serial.available() > 0) {
    // read a byte form the serial port and store it in data variable
    inString = Serial.readStringUntil('\r');
    // get incoming byte:
    if(inString.charAt(0) == 'r') {
      // pin number
      String rPinStr = inString.substring(1, inString.indexOf('\r')-1);
      int rpin = rPinStr.toInt();
      // read analog input
      sensorVal = analogRead(rpin);
      // send sensor value(s):
      Serial.println(sensorVal);
      inString = ""; // clear string buffer
    } else if(inString.charAt(0) == 'w') {
      // pin number
      String wPinStr = inString.substring(1, inString.indexOf('\r')-1);
      int wpin = wPinStr.toInt();
      pinMode(wpin, OUTPUT); // set pin to be an output
      digitalWrite(wpin, HIGH);
      delay(100);
      digitalWrite(wpin, LOW);
      Serial.println(1);
      inString = ""; // clear string buffer
    } else {
      Serial.println(-1);
    }
    serialFlush(); // flush serial port
  }
}

void establishContact() {
  while (Serial.available() <= 0) {
    Serial.println("0");   // send an initial string
    delay(300);
  }
}

void serialFlush(){
  while(Serial.available() > 0) {
    char t = Serial.read();
  }
} 
