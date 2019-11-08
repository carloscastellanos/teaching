// Hysteresis.ino : Arduino program to demonstrate a simple single-state hysteretic response.

// based uppon code by Garth Zeglin.
// https://courses.ideate.cmu.edu/99-355/s2018/text/ex/Arduino/input-hysteresis/input-hysteresis.html

// This assumes a photoresistor is pulling A0 up and a resistor is pulling A0
// down.  When the input is bright, the voltage increases, when dark, the
// voltage decreases.
const int SENSORPIN = A0;

/****************************************************************/
// Global variables.

// The state of the system can be captured with only two values, e.g., it is
// represented as a single bit.  The following statement defines two symbolic
// values, one for each possible state.
enum lightStates { DARK, LIGHT };

// Declare the state variable as a symbolic value.
enum lightStates state = DARK;

// The hysteretic response is defined by using two thresholds.  
const int lightThresh = 600;
const int darkThresh  = 200;

void setup() {
  // initialize the Serial port
  Serial.begin( 9600 );

  // configure our trivial I/O
  pinMode( LED_BUILTIN, OUTPUT );

  // the LED start out ON to match the initial state
  digitalWrite(LED_BUILTIN, HIGH);
}

void loop() {
  // Read the ambient light level.
  int input = analogRead(SENSORPIN);

  if (state == LIGHT) {
    if (input < darkThresh) {
      Serial.print("Dark observed at input level ");
      Serial.println(input);
      Serial.println("Transitioning to the DARK state.");
      
      state = DARK;
      digitalWrite(LED_BUILTIN, HIGH);
    }

  } else { // state must be DARK
    if (input > lightThresh) {
      Serial.print("Light observed at input level ");
      Serial.println(input);
      Serial.println("Transitioning to the LIGHT state.");
      
      state = LIGHT;
      digitalWrite(LED_BUILTIN, LOW);
    }
  }
}
