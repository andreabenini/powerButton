#include <Arduino.h>

#define PIN_BUTTON      1
#define PIN_RELAY       2
#define PIN_DETECTION   3

#define DELAY_BOUNCE    50      // button bounce delay [ms]
#define STATE_OFF       0
#define STATE_ON        1

byte stateCurrent,
     stateLast;

void setup() {
    pinMode(PIN_BUTTON, INPUT);
    pinMode(PIN_RELAY,  OUTPUT);
    stateCurrent = stateLast = STATE_OFF;
}

void loop() {
    stateCurrent = digitalRead(PIN_BUTTON);
    if (stateCurrent != stateLast) {
        stateLast = stateCurrent;
        digitalWrite(PIN_RELAY, HIGH);
        delay(DELAY_BOUNCE);
    // digitalWrite(ledPin, HIGH);
    // digitalWrite(ledPin, LOW);
    }
} /**/
