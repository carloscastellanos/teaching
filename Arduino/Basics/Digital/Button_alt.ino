/*
Button
Carlos Castellanos | 2014 | ccastellanos.com

Press and relase to turn an LED on, then press and relase again to turn off

Note: this example works best witha momentary pushbutton or similarly biased switch


Schematic, see:
https://github.com/carloscastellanos/teaching/blob/master/Arduino/Basics/Digital/Button_schem.png

Suggestions:
- Can you make the LED go off after a certain amount of time has passed? Hint: while
  using 'delay' will work, you can also look into the 'millis' function...
- add an additional led and/or button na d increase the complexity of behaviors  
*/

// constants won't change. They're used here to set pin numbers (faster/saves memory):
const int buttonPin = 2;      // pins for button and LED
const int ledPin = 13;

// store button's status - initialize to OFF (this variable will change, so it's not a const)
int buttonState = 0;
int prevButtonState = 0;
bool on = false;

void setup() {
  pinMode(buttonPin, INPUT);    // set button to input
  pinMode(ledPin, OUTPUT);      // LED to output
}

void loop() {
  
  // read the state of the button into our variable
  buttonState = digitalRead(buttonPin);
  
  // test that state
  if (buttonState == HIGH) {      // if button is pressed...
    if(prevButtonState == LOW) {  // if it was previously not pressed
      on = !on;
      digitalWrite(ledPin, on);   // toggle the LED
    }
  }

  prevButtonState = buttonState; // save the previous button state

}
