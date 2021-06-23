/**
 * Simple YM-2149 Demo
 * Author : F.X. ROBIN
 * Site   : https://www.fxjavadevblog.fr
 * 
 * This program play simple notes with the YM-2149 in order to demonstrate
 * the concept of sending commands to the chip.
 * 
 * */

#include <sys/types.h>
#include <stdio.h>
#include <mint/osbind.h>

#define DIVIDER_LINE "----------------------------------------"
#define print_screen(string) puts(string "\r\n")
#define print_divider_line() puts(DIVIDER_LINE "\r")

#define array_size(array) sizeof array / sizeof *array

#define PSG_REGISTER_INDEX_ADDRESS (__uint8_t *)0xFF8800
#define PSG_REGISTER_DATA_ADDRESS  (__uint8_t *)0xFF8802
#define PSG_CLOCK 2000000 // Hz
#define TONE_DIVIDER 16   // divider for tone generator : 16
#define VBL 50            // Hz (Lazy / Lame. I could check the $FF820A instead)

// English notation. Note + Natural Frequency in Hz
#define NOTE_C 264 // DO
#define NOTE_D 297 // RE
#define NOTE_E 330 // MI
#define NOTE_F 352 // FA
#define NOTE_G 396 // SOL
#define NOTE_A 440 // LA
#define NOTE_B 495 // SI

/**
 * writes a byte at the designed register of the PSG.
 * Note: function is "static inline" in order to avoid stack usage and optimize function calls
 * */
static inline void write_PSG(__uint8_t registerIndex, __uint8_t registerValue)
{
    (*PSG_REGISTER_INDEX_ADDRESS) = registerIndex;
    (*PSG_REGISTER_DATA_ADDRESS) = registerValue;
}

/**
 * waits for a specific amont of seconds. (based on Vsync() and VBL).
 * Note: function is "static inline" in order to avoid stack usage and optimize function calls
 * */
static inline void wait(__uint8_t seconds)
{
    for (int i = 0; i < VBL * seconds; i++)
    {
        Vsync();
    }
}

/**
 * Main program, executed in supervisor mode.
 * */
void run()
{
    print_screen("-=| Simple YM-2149 DEMO |=-");
    print_screen("http://www.fxjavadevblog.fr");
    print_divider_line();

    int notes[7] = {NOTE_C, NOTE_D, NOTE_E, NOTE_F, NOTE_G, NOTE_A, NOTE_B};

    write_PSG(PSG_MODE, 0b00111110);    // activate (0) only Tone on channel A, yes activation is 0 !
    write_PSG(PSG_AVOLUME, 0b00001111); // max volume on channel A

    int toneModifier = PSG_CLOCK / TONE_DIVIDER;

    for (int i = 0; i < array_size(notes); i++)
    {
        // note[i] must be converted. YM-2149 doc says : RealNoteFreq = (PSG_CLOCK) / (16 * value)
        // "value" reprensents the 12 bit oscillation frequency setting value (called TP in YM-2149 doc.)
        // so with simple maths : value = PSG_CLOCK divided by 16 then divided by note[i]
        // toneModifier = (PSG_CLOCK / TONE_DIVIDER) = (2 000 000 / 16) = 125 000
        __uint16_t value = toneModifier / notes[i]; // only 12 bits used in "value".

        // now write 12 bits value into R0 and R1
        write_PSG(PSG_APITCHLOW, (__uint8_t)value);         // first 8 bits into R0. PSG_APITCHLOW = 0 (R0)
        write_PSG(PSG_APITCHHIGH, (__uint8_t)(value >> 8)); // last 4 bits into R1, so let's ignore first 8 bits. PSG_APITCHHIGH = 1 (R1)

        printf("Playing : %d Hz\r\n", notes[i]);

        wait(1); // wait 1 seconds between each note
    }

    // shutdown volume and mixer

    write_PSG(8, 0b00000000); // volume channel A, OFF
    write_PSG(7, 0b00111111); // mixer, deactivate (1 !) all

    print_divider_line();
    print_screen("Finished");
    getchar();
}

/**
 * Turn me into god (supervisor mode), and launch "run" function.
 * This is needed for direct accessing the PSG register addresses.
 * */
int main(int argc, char *argv[])
{
    Supexec(&run);
}