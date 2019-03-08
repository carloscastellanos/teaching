
/*
BASIC SERIAL COMMUNICATION
Carlos Castellanos | 2014 | ccastellanos.com
 
In order for the Arduino to communicate with your computer it needs to have some kind of standard or
protocol. Arduino can communicate over USB via what called "serial communication" or RS-232 This
allows us to send values (such as sensor readings) from the Arduino to the computer and back to the 
Arduino (when a button is pressed, data from a web page, etc).
 
Once it's in your computer you can do all sorts of things wit the data 
(e.g. map it sound, store it in a databse, etc)
 
You will need to open the Serial Monitor window in the Arduino IDE (located above) in order to
view the results

Suggestions:
- Keep a running count of the number of times the button is pressed and send it out the serial port
- Can you detect some type of patterns in the button data (e.g. how many  button press per second)
and send that out to the computer?
- Use/alter the code to read a photocell or control a relay.
 
 Refer to the Digital Read Serial tutorial for more:
 http://arduino.cc/en/Tutorial/DigitalReadSerial
 
 Also look at hte Serial Call and Response tutorial to learn how to both send & receive
 http://arduino.cc/en/Tutorial/SerialCallResponse
 
 Other relevant tutorials on Serial Communication
 http://arduino.cc/en/Tutorial/AnalogInOutSerial
 http://arduino.cc/en/Tutorial/PhysicalPixel
 http://arduino.cc/en/Tutorial/SerialEvent
 http://arduino.cc/en/Tutorial/SwitchCase2
 */

int buttonPin = 2;
int buttonState = 0; // 0/1 = on/off

void setup() {
  pinMode(buttonPin, INPUT);
  
  // start connection over USB; 9600 is the 'baud rate', or bits/second
  Serial.begin(9600);
}

void loop() {
  buttonState = digitalRead(buttonPin); // get the button state

  if (buttonState == HIGH) {
    Serial.println("HELLO!");  // send a new line with the word "HELLO!"
    delay(1);                  // waiting 1ms improves stability of your program

    Serial.print("Button: ");  // a label for the data (useful when sending multiple readings)
    Serial.print(buttonState); // send the button's state
    Serial.print("\n");        // a 'newline' character so we get a line break (allows to see the data better
  }
}


