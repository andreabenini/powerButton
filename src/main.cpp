#include "main.h"

// I/O
#define PIN_RELAY       0                       // Relay [ON/OFF]               (output)
#define PIN_BUTTON      1                       // Push button                  (input )
#define PIN_DETECTION   2                       // External detection pin       (input )
#define PIN_SHUTDOWN    4                       // Output signal for shutdown   (output)
//
#define DELAY_BOUNCE    100                     // button bounce delay [ms]
#define RELAY_OFF       HIGH
#define RELAY_ON        LOW
#define STATE_OFF       0
#define STATE_ON        1
#define TIME_STARTUP    10                      // Time for remote startup  [seconds]
#define TIME_SHUTDOWN   30                      // Time for remote shutdown [seconds]
#define TIME_DETECTION  5                       // Time for remote shutdown [seconds] when power is not detected anymore

byte
    mode,                                       // [State Finite] mode
    applianceState,                             // Remote appliance state (current and previous state)
    buttonState,    buttonStatePrevious;        // Button state (current and previous state)
unsigned long
    startup,                                    // Startup time [with millis()]
    shutdown;                                   // Shutdown sequence initiated

void setup() {
    pinMode(PIN_BUTTON,     INPUT);
    pinMode(PIN_DETECTION,  INPUT);
    pinMode(PIN_RELAY,      OUTPUT);
    pinMode(PIN_SHUTDOWN,   OUTPUT);
    turnOff();
} /**/

void loop() {
    buttonRead();
    if (mode == STATE_ON) {
        applianceRead();
        turnOffIfNeeded();
    } 
} /**/

void buttonRead() {
    // Read button
    buttonState = digitalRead(PIN_BUTTON);
    if (buttonState != buttonStatePrevious) {
        if (buttonState == HIGH) {                              // Button pressed
            // set status
            switch (mode) {
            case STATE_OFF:                                     // Turn ON the appliance
                turnOn();
                break;
            case STATE_ON:                                      // Turn it OFF, where possible
                if (millis()-startup > TIME_STARTUP*1000) {     // Sending shutdown signal to appliance (only if appliance startup time has elapsed)
                    digitalWrite(PIN_SHUTDOWN, HIGH);
                    shutdown = millis();
                }
                break;
            }
        }
        buttonStatePrevious = buttonState;
        delay(DELAY_BOUNCE);
    }
} /**/

void turnOn() {
    mode = STATE_ON;
    shutdown = 0;
    startup  = millis();
    digitalWrite(PIN_RELAY, RELAY_ON);
} /**/
void turnOff() {
    digitalWrite(PIN_SHUTDOWN, LOW);
    digitalWrite(PIN_RELAY,    RELAY_OFF);
    shutdown = startup  = mode = STATE_OFF;
    applianceState = buttonState = buttonStatePrevious = LOW;
} /**/
void turnOffIfNeeded() {
    if (shutdown>0 && millis()-shutdown > TIME_SHUTDOWN*1000) {         // Remote not responding on time, brutal shutdown
        turnOff();
    }
} /**/

// Read Appliance State
void applianceRead() {
    applianceState = digitalRead(PIN_DETECTION);
    if (applianceState == LOW) {                                        // change state
        if (shutdown==0 && millis()-startup > TIME_STARTUP*1000) {      // Boot time expired, it's really turned off. Turn off relay
            shutdown = millis();
        }
        if (shutdown>0 && millis()-shutdown > TIME_DETECTION*1000) {    // Turn it off after TIME_DETECTION delay
            turnOff();
        }
    }
} /**/
