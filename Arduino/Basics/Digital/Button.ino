/*
Button
Carlos Castellanos | 2014 | ccastellanos.com
Based upon code by Jeff Thompson: www.jeffreythompson.org

Read a button, light up an LED!

Schematic, see:
http://www.arduino.cc/en/Tutorial/Button

Suggestions:
- Can you add more buttons? How would you best wire them on the breadboard?
- Can you make the LED go off after a certain amount of time has passed? Hint: while
  using 'delay' will work, you can also look into the 'millis' function...
*/

// constants won't change. They're used here to set pin numbers (faster/saves memory):
const int buttonPin = 2;      // pins for button and LED
const int ledPin = 13;

// store button's status - initialize to OFF (this variable will change, so it's not a const)
int buttonState = 0;    

void setup() {
  pinMode(buttonPin, INPUT);    // set button to input
  pinMode(ledPin, OUTPUT);      // LED to output
}

void loop() {
  
  // read the state of the button into our variable
  buttonState = digitalRead(buttonPin);
  
  // test that state
  if (buttonState == HIGH) {      // if button is pressed...
    digitalWrite(ledPin, HIGH);   // turn on the LED
  }
  else {                          // if the button is not pressed...
    digitalWrite(ledPin, LOW);    // turn the LED off!
  }
}
