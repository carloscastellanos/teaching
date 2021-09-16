/*
 * Arduino program to demonstrate a simple finite state machine program structure.
 * Carlos Castellanos | 2020 | ccastellanos.com
 * 
 * with some code borrowed from Garth Zeglin: https://www.cs.cmu.edu/~garthz/
 * 
 * Given the number of outputs, this example could be extended to encompass many more states
 */


const int INPUT_PIN = 4;
const int OUTPUT_PIN_A = 5;
const int OUTPUT_PIN_B = 6;
const int OUTPUT_PIN_C = 7;

// Define the name for each state, and an index variable to represent the
// current state.
enum state_name_t { START=0, STATE1, STATE2, STATE3, STATE4 } state_index;

void setup()
{
  // initialize the Serial port
  Serial.begin(9600);

  // configure our inputs & outputs
  pinMode(INPUT_PIN, INPUT);
  pinMode(OUTPUT_PIN_A, OUTPUT);
  pinMode(OUTPUT_PIN_B, OUTPUT);
  pinMode(OUTPUT_PIN_C, OUTPUT);

  // initialize the state machine
  state_index = START;
}

/****************************************************************/
// Standard Arduino polling function.

// This demonstrates a conventional switch-case structure for representing a
// finite state machine as an Arduino program. The current state is represented
// as the value of the state_index variable. Note that this structure allows
// for easily evaluating other subroutines or state machines concurrently with
// this one, as the execution passes through the loop() function on each
// iteration.

void loop()
{
  // select the code block corresponding to the state to generate the appropriate outputs for the state
  switch( state_index) {

  case START:
    Serial.println("Entering start state.");
    digitalWrite(OUTPUT_PIN_A, LOW);
    digitalWrite(OUTPUT_PIN_B, LOW);
    digitalWrite(OUTPUT_PIN_C, LOW);
    break;

  case STATE1:
    Serial.println("Entering state 1.");    
    digitalWrite(OUTPUT_PIN_A, HIGH);
    digitalWrite(OUTPUT_PIN_B, LOW);
    digitalWrite(OUTPUT_PIN_C, LOW);
    break;

  case STATE2:
    Serial.println("Entering state 2.");    
    digitalWrite(OUTPUT_PIN_A, LOW);
    digitalWrite(OUTPUT_PIN_B, HIGH);
    digitalWrite(OUTPUT_PIN_C, LOW);
    break;

  case STATE3:
    Serial.println("Entering state 3.");
    digitalWrite(OUTPUT_PIN_A, LOW);
    digitalWrite(OUTPUT_PIN_B, LOW);
    digitalWrite(OUTPUT_PIN_C, HIGH);
    break;

  case STATE4:
    Serial.println("Entering state 4.");
    digitalWrite(OUTPUT_PIN_A, HIGH);
    digitalWrite(OUTPUT_PIN_B, HIGH);
    digitalWrite(OUTPUT_PIN_C, HIGH);
    break;
  }

  delay(1000);
  Serial.println("Sampling input.");
  int input = digitalRead( INPUT_PIN );

  // select the code block corresponding to the current state to evaluate the next input
  switch(state_index) {

  case START:
    if (input) state_index = STATE1;
    else state_index = START;
    break;

  case STATE1:
    if (input) state_index = START;
    else state_index = STATE2;
    break;

  case STATE2:
    if (input) state_index = STATE3;
    else state_index = STATE1;
    break;

  case STATE3:
    if (input) state_index = STATE4;
    else state_index = STATE2;
    break;

  case STATE4:
    if (input) state_index = STATE4;
    else state_index = START;
    break;
  }
}    
