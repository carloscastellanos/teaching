// the input pin:
const int buttonPin = 2;
 
// the length of the presses in ms:
const int longPress = 1000;
const int shortPress = 250;
// variable for how long the user actually presses:
long pressTime = 0;
 
// previous state of the button:
int lastButtonState = LOW;

void setup() {
  // initialize serial and I/O pin:
  Serial.begin(9600);
  pinMode(buttonPin, INPUT);
}

void loop() {
  /*
   look for the button to change state, and when it does, note the press time in the pressTime variable.
   When the button is released (goes from HIGH to LOW), calculate how long it was pressed, and print it
  */

  // read the button:
  int buttonState = digitalRead(buttonPin);
 
  // if the button has changed:
  if (buttonState != lastButtonState) {
    // if the button is pressed, start a timer
    if (buttonState == HIGH) {
      pressTime = millis();
    }
    // if it's released, stop the timer
    if (buttonState == LOW) {
      long holdTime = millis() - pressTime;
      // take action for long press, short press, or tap:
      if (holdTime > longPress) {
        Serial.println("long press");
      } else if (holdTime > shortPress) {
        Serial.println("short press");
      } else {
        Serial.println("Tap");
      }
    }
  }
  // save button state for next time:
  lastButtonState = buttonState;
}