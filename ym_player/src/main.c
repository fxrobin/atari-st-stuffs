#include <sys/types.h>
#include <stdio.h>
#include <mint/osbind.h>

#include "fx_buffer.h"
#include "fx_screen.h"

#define PSG_REGISTER_INDEX_ADDRESS (__uint8_t *)0xFF8800
#define PSG_REGISTER_DATA_ADDRESS (__uint8_t *)0xFF8802
#define SCANCODE_ADDRESS (__uint8_t *)0XFFFC02
#define INTERRUPTION_SERVICE_ADDRESS (__uint8_t *)0xFFFFFA0FL

#define YM3_FILE "ancool1.ym"

#define locate(x, y) printf("\033Y%c%c", (char)(32 + y), (char)(32 + x))
#define write_byte(value, address) (*address) = (__uint8_t)value
#define read_byte(address) (*address)

// Bitmask for clearing INTERRUPTION SERVICE BIT 5 (Timer A)
volatile unsigned char END_OF_INTERRUPT_TIMER_A = ~(1 << 5);

// ASM routine prototype declaration
void asm_timerA_Routine();

// Stores the initalScreenContext
ScreenContext *screenContext;

// shared variables with ASM
// A music is made up by N music frame
// A music frame is a set of 14 bytes values to be put into R0 to R13 of the PSG.
unsigned long int totalMusicFrames = 0;
unsigned long int currentMusicFrame = 0;
__uint8_t *musicData;

void initPlayer(Buffer *buffer)
{
    totalMusicFrames = ((buffer->size) - 4) / 14; // excluding first 4 bytes and calculating number of frames.
    musicData = (buffer->data) + 4;               // pointing on real data, excluding first 4 bytes "YM3!"
}

void soundOff()
{
    for (__uint8_t i = 0; i < 14; i++)
    {
        write_byte(i, PSG_REGISTER_INDEX_ADDRESS);
        write_byte(0, PSG_REGISTER_DATA_ADDRESS);
    }
}

void __attribute__((interrupt)) timerA_Routine_C()
{

    if (currentMusicFrame < totalMusicFrames)
    {
        __uint8_t *address = musicData + currentMusicFrame++;

        for (int i = 0; i < 14; i++)
        {
            *PSG_REGISTER_INDEX_ADDRESS = i;
            *PSG_REGISTER_DATA_ADDRESS = *(address);
            address += totalMusicFrames;
        }
    }

    *(INTERRUPTION_SERVICE_ADDRESS) &= END_OF_INTERRUPT_TIMER_A; // clear service bit.
}

void displayInfo(Buffer *buffer)
{
    locate(0, 2);
    printf("Music file ........... : %s\r\n", YM3_FILE);
    printf("Buffer size .......... : %d bytes\r\n", buffer->size);
    printf("Number of music frames : %d\r\n", totalMusicFrames);
    printf("Music data address ... : $%X\r\n", musicData);
    
    locate(28, 10);
    printf("Frame [_______] / [%07d]", totalMusicFrames);
}

void displayGreetings()
{
    // just for fun, display the Atari Logo
    Bconout(5, 0x0E);
    Bconout(5, 0x0F);

    printf("Very Small YM Player (YM3!) by FX https://www.fxjavadevblog.fr (06/2021)\r\n");
}

#define BYTE_TO_BINARY_PATTERN "%c%c%c%c%c%c%c%c"
#define BYTE_TO_BINARY(byte)       \
    (byte & 0x80 ? '1' : '0'),     \
        (byte & 0x40 ? '1' : '0'), \
        (byte & 0x20 ? '1' : '0'), \
        (byte & 0x10 ? '1' : '0'), \
        (byte & 0x08 ? '1' : '0'), \
        (byte & 0x04 ? '1' : '0'), \
        (byte & 0x02 ? '1' : '0'), \
        (byte & 0x01 ? '1' : '0')

__uint8_t flag = 1;
__uint32_t key;
__uint8_t poll;
__uint8_t scancode;

void displayKeyBoardStatus()
{
    if (Cconis() != 0L)
    {
        key = Crawcin();
        if ((char)key == ' ')
        {
            flag = 0;
        }
        else
        {
            locate(60, 1);
            printf("%c (%d : %X)", key, (char)key, (char)key);
        }
    }

    locate(60, 2);
    poll = read_byte(SCANCODE_ADDRESS);
    scancode = poll & 0b01111111;
    printf("KBD " BYTE_TO_BINARY_PATTERN, BYTE_TO_BINARY(poll));
    locate(60, 3);
    printf("SCD " BYTE_TO_BINARY_PATTERN, BYTE_TO_BINARY(scancode));
    locate(60, 4);
    printf("VALS %02X : %02X", poll, scancode);
}

void displayHeaders()
{
    locate(0, 12);
    for(int i = 0; i < 14 ; i++)
    {
        printf("| %2d ",i);
    }
    putchar('|');

    locate(0, 13);
    puts("|---------------------------------------------------------------------|");

    locate(0, 16);
    printf("Channel 1\r\n");
    printf("Channel 2\r\n");
    printf("Channel 3\r\n");
}

// char sequence in order to animate a char like a turning wheel.
static char char_anim[8] = {'|', '/', '-', '\\', '|', '/', '-', '\\'};
void displayStatusBar()
{
    // status bar
    locate(26, 10);
    int rest = (currentMusicFrame / 10) % 8;
    putchar(char_anim[rest]);

    locate(35, 10);
    printf("%07d\n", currentMusicFrame);
}


void displayRegistersBar()
{
    locate(0, 14);
    putchar('|');

    for (int i = 0; i < 14; i++)
    {
        write_byte(i, PSG_REGISTER_INDEX_ADDRESS);
        __uint8_t value = read_byte(PSG_REGISTER_INDEX_ADDRESS);
        printf(" %02X |", value);
    }
}

void displayVuMeter()
{
    for (int i = 8; i < 11 ; i++)
    {
        write_byte(i, PSG_REGISTER_INDEX_ADDRESS);
        __uint8_t level = read_byte(PSG_REGISTER_INDEX_ADDRESS) & 0b00001111;

        locate(11, 16 + (i - 8));
        for (int j = 0; j < level * 2; j++)
        {
            putchar('=');
        }
        puts("\33K");
    }
}

void run()
{
    // inits display in medium resolution with a custom palette
    screenContext = initMediumResolution();

    displayGreetings();

    Buffer *buffer = loadFile(YM3_FILE);

    initPlayer(buffer);

    displayInfo(buffer);

    displayHeaders();

    locate(0, 9);
    printf("Removing KEYCLICK Sound");
    __uint8_t originalKeyClick = read_byte((__uint8_t *)0x00000484);
    write_byte(0, (__uint8_t *)0x484);

    Jdisint(13);
    Xbtimer(0, 7, 246, asm_timerA_Routine); // 50 Hz
    Jenabint(13);

    locate(0, 10);
    printf("Timer A routine installed");

    while ((read_byte(SCANCODE_ADDRESS) != 129))
    {

        displayKeyBoardStatus();

        displayStatusBar();

        displayRegistersBar();

        displayVuMeter();

        // let the CPU breathing a little
        Vsync();
    }
    Crawcin();

    // remove timer A routine
    Xbtimer(0, 0, 0, (void *)0);

    soundOff();

    // restore keyclick
    write_byte(originalKeyClick, (__uint8_t *)0x484);

    locate(0, 21);
    printf("Timer A routine removed and KeyClick configuration restored\r\n");
    printf("Cleaning memory...\r\n");
    freeBuffer(buffer);
    printf("Finished. Press [ENTER] to go back to Desktop.\r\n");

    getchar();

    restoreScreenContext(screenContext);
}

int main(int argc, char *argv[])
{
    Supexec(&run);
}
