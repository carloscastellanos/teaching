// reading an analog input and doing smoothing of the data
// also does some basic analysis to dertmin if the sensor values are rising or falling

const int sensorPin = A0;

int rawValue = 0;
int smoothValue = 0;
int lastSmoothValue = 0;

float weight = 0.1; // smoothing factor

void setup() {
  Serial.begin(9600);
}

void loop() {
  rawValue = analogRead(sensorPin);

  // Exponential smoothing
  smoothValue = weight * rawValue + (1 - weight) * lastSmoothValue;

  int delta = smoothValue - lastSmoothValue;

  // Send: smoothed value + change direction
  Serial.print(smoothValue);
  Serial.print(",");
  Serial.println(delta);

  lastSmoothValue = smoothValue;
  delay(2);
}
