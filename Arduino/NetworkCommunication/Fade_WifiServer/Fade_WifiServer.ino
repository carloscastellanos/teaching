/*
 * Fade_WifiServer
 *
 * Example of using an Arduino wifi to trade sensor readings with another Arduino
 * 
 * Carlos Castellanos
 * August 17, 2020
 *
 * -----------------------------------------------------------------------------------
 *
 * Things that you need:
 * - (2) wifi-enabled Arduinos (e.g. Arduino Uno Wifi Rev 2)
 * - (2) analog sensors or potentiometer
 *
 * The Arduinos run as servers and reecive the sensor data from a client (the other Arduino)
 * They then use one another's sensor data to change the brightness of the LED using PWM
 *
 */

#include <SPI.h>
#include <WiFiNINA.h>

#include "arduino_secrets.h" 
/*
 * please enter your sensitive data in the arduino_secrets.h file
 */
const char ssid[] = SECRET_SSID;     // wifi ssid
const char pass[] = SECRET_PASS;     // wifi password
const unsigned int keyIndex = 0;     // your network key Index number (needed only for WEP)

int status = WL_IDLE_STATUS;

WiFiServer server(2390);             // create a server on port 2390

String inString;                     // string to hold data from the client

boolean alreadyConnected = false;    // whether or not the client was connected previously

const unsigned int ledPin = 9;       // the PWM pin the LED is attached to
const unsigned int sensorPin = 0;    // analog pin 0

void setup() {
  pinMode(ledPin, OUTPUT);
  Serial.begin(9600);

  // check the status of the wifi module
  if(WiFi.status() == WL_NO_MODULE) {
    Serial.println(F("Communication with WiFi module failed!"));
    // don't continue
    while (true);
  }
  
  String fv = WiFi.firmwareVersion();
  if(fv < WIFI_FIRMWARE_LATEST_VERSION) {
    Serial.println(F("Please upgrade the firmware"));
  }

  // attempt to connect to the wifi network
  while(status != WL_CONNECTED) {
    Serial.print(F("Attempting to connect to Network named: "));
    Serial.println(ssid);
    // Connect to WPA/WPA2 network.
    // If using a WEP network use WiFi.begin(ssid, keyIndex, key);
    // If using an open network use WiFi.begin(ssid);
    status = WiFi.begin(ssid, pass);
    // wait 10 seconds for connection
    delay(10000);
  }

  Serial.println(F("Connected to wifi"));
  Serial.print(F("SSID: "));
  Serial.println(WiFi.SSID()); // the SSID of the network you're connected to
  IPAddress ip = WiFi.localIP(); // this board's IP address
  Serial.print(F("IP Address: "));
  Serial.println(ip);

  // start the server
  Serial.println(F("\nStarting server..."));
  server.begin();
}

void loop() {
  // wait for a new client
  WiFiClient client = server.available();

  // when the client sends data, reply with data from the server
  if(client) {
    if(!alreadyConnected) {
      // clean out the input buffer
      client.flush();
      Serial.println(F("We have a new client"));
      alreadyConnected = true;
    }

    while(client.available() > 0) {
      // read the incoming bytes from the client
      char inChar = client.read();
      if(inChar != 10) { // look for a new line ('\n' or ASCII 10)
        inString += inChar;
      }
      
      // convert value to an integer and map to a value between 0 and 255 (the range of analogOut())
      int pwmVal = map(inString.toInt(), 0, 1023, 0, 255);
      analogWrite(ledPin, pwmVal); // this will change the brightness of the LED
      Serial.print(F("From client: "));
      Serial.println(pwmVal);
      
      // read the analog sensor value and send to client
      int outVal = analogRead(sensorPin);
      server.println(outVal);
      Serial.print(F("To client: "));
      Serial.println(outVal);

      delay(5); // slight delay to keep things stable
    }
  }
}
