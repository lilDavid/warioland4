#include "control.h"
#include "demo_input.h"
#include "demo.h"
#include "types.h"


IWRAM_DATA u8 gDemoState = 0;


void func_80102D8(void) {
    if (gDemoState == DEMO_STATE_RECORDING) {
        DemoInput_Record();
    } else if (gDemoState == DEMO_STATE_PLAYBACK) {
        DemoInput_Playback();
    }
}

void DemoInput_Record(void) {
    if (gDemoSequenceIndex >= DEMO_INPUT_SIZE - 2) {
        gButtonsPressed = START_BUTTON;
    } else if (gButtonsHeld == gDemoInputs[gDemoSequenceIndex]) {
        if (gDemoInputLengths[gDemoSequenceIndex] == U16_MAX) {
            gDemoSequenceIndex += 1;
            gDemoInputs[gDemoSequenceIndex] = gButtonsHeld;
        }
        TIMER_COUNT_UP(gDemoInputLengths[gDemoSequenceIndex]);
    } else {
        gDemoSequenceIndex += 1;
        gDemoInputs[gDemoSequenceIndex] = gButtonsHeld;
        gDemoInputLengths[gDemoSequenceIndex] = DELTA_TIME;
    }
}

void DemoInput_Playback(void) {
    if (gDemoSequenceIndex >= DEMO_INPUT_SIZE - 2 || gDemoButtonPressTimer == U16_MAX || gButtonsHeld != 0) {
        gButtonsPressed = START_BUTTON;
    } else {
        if (gDemoButtonPressTimer == 0) {
            gDemoSequenceIndex += 1;
            gDemoButtonPressTimer = gDemoInputLengths[gDemoSequenceIndex];
        }
        gButtonsHeld = gDemoInputs[gDemoSequenceIndex];
        gButtonsPressed = (gButtonsHeld ^ gDemoButtonsPressed) & gButtonsHeld;
        gDemoButtonsPressed = gButtonsHeld;
        TIMER_COUNT_DOWN(gDemoButtonPressTimer);
    }
}

void DemoInput_ReadButtons(void) {
    gButtonsHeld = gDemoInputs[gDemoSequenceIndex];
    gButtonsPressed = (gButtonsHeld ^ gDemoButtonsPressed) & gButtonsHeld;
    gDemoButtonsPressed = gButtonsHeld;
}

void DemoInput_Init(void) {
    s32 i;

    if (gDemoState == DEMO_STATE_RECORDING) {
        for (i = 0; i < DEMO_INPUT_SIZE; i++) {
            gDemoInputs[i] = 0;
            gDemoInputLengths[i] = 0;
        }
        gDemoButtonPressTimer = 0;
    } else {
        gDemoButtonPressTimer = gDemoInputLengths[0];
    }
    gDemoSequenceIndex = 0;
    gDemoButtonsPressed = 0;
}
