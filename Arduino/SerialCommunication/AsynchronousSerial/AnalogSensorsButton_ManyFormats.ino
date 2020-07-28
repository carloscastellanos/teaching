const int btnPin = 2; // digital input

void setup() {
   // configure the serial connection
   Serial.begin(9600);
   // configure the digital input
   pinMode(btnPin, INPUT);
}

void loop() {
   // read the sensor
   int sensorValueMapped = map(analogRead(A0), 0, 1023, 0, 255);
   
   // print the results in different formats
   Serial.write(sensorValueMapped);      // Print the raw binary value
   Serial.print('\t');                   // print a tab
   // print ASCII-encoded values:
   Serial.print(sensorValueMapped, BIN); // print ASCII-encoded binary value
   Serial.print('\t');                   // print a tab
   Serial.print(sensorValueMapped);      // print decimal value
   Serial.print('\t');                   // print a tab
   Serial.print(sensorValueMapped, HEX); // print hexadecimal value
   Serial.print('\t');                   // print a tab
   Serial.print(sensorValueMapped, OCT); // print octal value
   Serial.println();                     // print linefeed and carriage return
}
