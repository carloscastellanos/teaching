// Code take from this example by Tom Igoe:
// https://itp.nyu.edu/physcomp/lessons/accelerometers-gyros-and-imus-the-basics/#Built-in_IMUs

#include "Arduino_LSM6DS3.h"

void setup() {
  Serial.begin(9600);
  // start the IMU:
  if (!IMU.begin()) {
    Serial.println("Failed to initialize IMU");
    // stop here if you can't access the IMU:
    while (true);
  }
}

void loop() {
  // values for acceleration and rotation:
  float xAcc, yAcc, zAcc;
  float xGyro, yGyro, zGyro;

  // if both accelerometer and gyrometer are ready to be read:
  if (IMU.accelerationAvailable() &&
      IMU.gyroscopeAvailable()) {
    // read accelerometer and gyrometer:
    IMU.readAcceleration(xAcc, yAcc, zAcc);

    // print the results:
    IMU.readGyroscope(xGyro, yGyro, zGyro);
    Serial.print(xAcc);
    Serial.print(",");
    Serial.print(yAcc);
    Serial.print(",");
    Serial.print(zAcc);
    Serial.print(",");
    Serial.print(xGyro);
    Serial.print(",");
    Serial.print(yGyro);
    Serial.print(",");
    Serial.println(zGyro);
  }
}