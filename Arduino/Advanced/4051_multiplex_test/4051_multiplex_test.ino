/*
 * Example of using the 4051 (74HC4051) multiplexer/demultiplexer
 *
 *
 * Carlos Castellanos
 * August 19, 2020
 *
 * Based on code by Nick Gammon
 * http://www.gammon.com.au/forum/?id=11976
 *
 */



/***********************
=== PIN DEFINITIONS ===
***********************/
//where  the multiplexer address select lines (A/B/C) (pins 11/10/9 on the 4051) are connected
const byte addressA = 11; // low-order bit
const byte addressB = 10;
const byte addressC = 9;  // high-order bit

// where the multiplexer common in/out line (pin 3 on the 4051) is connected
const byte sensor = A0;


void setup (){
  Serial.begin (9600);
  Serial.println ("Starting multiplexer test ...");
  pinMode (addressA, OUTPUT); 
  pinMode (addressB, OUTPUT); 
  pinMode (addressC, OUTPUT); 
}

void loop () {
  // show all 8 sensor readings
  for (byte i=0; i<=7; i++) {
    Serial.print("Sensor ");
    Serial.print(i);
    Serial.print(": ");
    Serial.println(readSensor(i));
    Serial.println();
  }
  delay(500);
}

int readSensor (const byte which) {
  // select correct MUX channel

  // low-order bit
  if((which & 1)) {
    digitalWrite(addressA, HIGH);
  } else {
    digitalWrite(addressA, LOW);
  }
  
  if((which & 2)) {
    digitalWrite(addressB, HIGH);
  } else {
    digitalWrite(addressB, LOW);
  }

  // high-order bit
  if((which & 4)) {
    digitalWrite(addressC, HIGH);
  } else {
    digitalWrite(addressC, LOW);
  }

  /* a more efficient (if slightly abstruse) way of doing the above
  digitalWrite (addressA, (which & 1) ? HIGH : LOW);  // low-order bit
  digitalWrite (addressB, (which & 2) ? HIGH : LOW);
  digitalWrite (addressC, (which & 4) ? HIGH : LOW);  // high-order bit
  */

  // now read the sensor
  return analogRead(sensor);
}
