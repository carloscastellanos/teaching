
void setup() {
 pinMode(2, OUTPUT);  // declare the ledPin as an OUTPUT
 Serial.begin(9600);
}

void loop() {
 int val = analogRead(0);    // read the value from the sensor
 Serial.println(val);
 
 delay(10);
}
