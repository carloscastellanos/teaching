/*
 * 
 * Testing the HC-SR04 ultrasonic sensor
 *
    Ultrasonic sensor Pins:
        VCC: +5VDC
        Trig : Trigger (INPUT) - Pin 9
        Echo: Echo (OUTPUT) - Pin 8
        GND: GND
 */
 
int trigPin = 9;    //Trig
int echoPin = 8;    //Echo
long duration, cm, inches;
 
void setup() {
  //Serial Port begin
  Serial.begin (9600);
  //Define inputs and outputs
  pinMode(trigPin, OUTPUT);
  pinMode(echoPin, INPUT);
}
 
void loop()
{
 
  // The sensor is triggered by a HIGH pulse of 10 or more microseconds.
  // Give a short LOW pulse beforehand to ensure a clean HIGH pulse:
  digitalWrite(trigPin, LOW);
  delayMicroseconds(5);
  digitalWrite(trigPin, HIGH);
  delayMicroseconds(10);
  digitalWrite(trigPin, LOW);
 
  // Read the signal from the sensor: a HIGH pulse whose
  // duration is the time (in microseconds) from the sending
  // of the ping to the reception of its echo off of an object.
  pinMode(echoPin, INPUT);
  duration = pulseIn(echoPin, HIGH);
 
  // convert the time into a distance
  // we need distance traveled (cm & in) per microsecond
  // distance traveled by sensor is calculated via the following formula:
  // distance = duration * speedofSound...
  // however, time taken is actually to and from the ultrasonic sensor
  // (First the sound travels away from the sensor
  // and then it bounces off of a surface and returns back)
  // we only need half of that distance.
  // Therefore travel time is taken as duration/2:
  // distance = (duration/2) * speedofSound
  //
  // The speed of sound at sea level in dry air at 20°C (68°F)
  // is 343.51 meters/second or 1,127 ft/second (that's close enough)
  // this is equivalent too:
  // 34351 cm/sec
  // 34.351 cm/msec
  // 0.034351 cm/microsec OR 1/0.034351 = 29.11 microsecs/cm
  // 13524 in/sec
  // 13.524 in/msec
  // 0.013524 in/microsec OR 1/0.013524 = 73.94 microsecs/in
  // for more visit: https://en.wikipedia.org/wiki/Speed_of_sound

  // The pulseIn() function returns the length of a pulse in microseconds
  // so we use 29.11 microsecs/cm and 73.94 microsecs/in to calculate the
  // distance in centimeters and inches respectively.
  cm = (duration/2) / 29.11; // (duration/2) * 0.034351 will also work
  inches = (duration/2) / 73.94; // (duration/2) * 0.013524 will also work
  
  Serial.print(inches);
  Serial.print("in, ");
  Serial.print(cm);
  Serial.print("cm");
  Serial.println();
  
  delay(250);
}
