/*
Button
Carlos Castellanos | 2019 | ccastellanos.com

count how many times a button is pressed 

Schematic, see:
http://www.arduino.cc/en/Tutorial/Button

*/

// constants won't change. They're used here to set pin numbers (faster/saves memory):
const int buttonPin = 2;      // pins for button and LED

// store button's status - initialize to OFF
// (this variable will change, so it's not a const)
int buttonState = 0;
int prevButtonState = 0;
int pressCount = 0;

void setup() {
  Serial.begin(9600);
  pinMode(buttonPin, INPUT);    // set button to input
}

void loop() {
  
  // read the state of the button into our variable
  buttonState = digitalRead(buttonPin);
  
  // check if the current button state is different than the previous state
  if (buttonState != prevButtonState) {
    if(buttonState == HIGH) {
      Serial.print(F("Button has been pressed "));
      Serial.print(++pressCount); // increment the counter
      Serial.println(F(" times."));
    }
  }

  prevButtonState = buttonState; // save the previous button state
}
