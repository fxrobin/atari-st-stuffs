#include <sys/types.h>
#include <stdio.h>
#include <mint/osbind.h>

#include "fx_buffer.h"
#include "fx_screen.h"

#define PSG_ADDRESS_REGISTER (__uint8_t *)0xFF8800
#define PSG_ADDRESS_WRITE_DATA (__uint8_t *)0xFF8802
#define SCANCODE_ADDRESS (__uint8_t *)0XFFFC02
#define INTERRUPTION_SERVICE_ADDRESS (__uint8_t *)0xFFFFFA0FL


#define YM3_FILE "ancool1.ym"

#define locate(x, y) printf("\033Y%c%c", (char)(32 + y), (char)(32 + x))
#define write_byte(value, address) (*address) = (__uint8_t)value
#define read_byte(address) (*address)

// ASM routine prototype declaration
void asm_timerA_Routine();

// Stores the initalScreenContext
ScreenContext *screenContext;

// shared variables with ASM
// A music is made up by N music frame
// A music frame is a set of 14 bytes values to be put into R0 to R13 of the PSG.
int totalMusicFrames = 0; 
int currentMusicFrame = 0;
__uint8_t *registerPointers[14];

// char sequence in order to animate a char like a turning wheel.
static char char_anim[8] = {'|', '/', '-', '\\', '|', '/', '-', '\\'};

// Bitmask for clearing INTERRUPTION SERVICE BIT 5 (Timer A)
volatile unsigned char END_OF_INTERRUPT_TIMER_A = ~(1 << 5);


void __attribute__((interrupt)) timerA_Routine_C()
{
    currentMusicFrame++;
    // TODO : if currentFrame < totalFrames
    for (int i = 0; i < 14; i++)
    {
        // __uint8_t* offset = (data + (i * totalMusicFrames) + currentMusicFrame);
        *PSG_ADDRESS_REGISTER = i;
        *PSG_ADDRESS_WRITE_DATA = *(registerPointers[i]);
        registerPointers[i]++;
    }

    *(INTERRUPTION_SERVICE_ADDRESS) &= END_OF_INTERRUPT_TIMER_A; // clear service bit.
}

void initPlayer(Buffer *buffer)
{
    totalMusicFrames = ((buffer->size) - 4) / 14; // excluding first 4 bytes and calculating number of frames.
    __uint8_t *data = (buffer->data) + 4; // pointing on real data, excluding first 4 bytes "YM3!"

    // setting the 14 pointers to the correct offset in the buffer
    for (int i = 0; i < 14; i++)
    {
        registerPointers[i] = data + (i * totalMusicFrames);
    }
}

void soundOff()
{
    for (__uint8_t i = 0; i < 14; i++)
    {
        write_byte(i, PSG_ADDRESS_REGISTER);
        write_byte(0, PSG_ADDRESS_WRITE_DATA);
    }
}

void displayInfo(Buffer *buffer)
{
    locate(0, 2);
    printf("Tune file ........... : %s\r\n", YM3_FILE);
    printf("Buffer size ......... : %d bytes\r\n", buffer->size);
    printf("Number of data frames : %d\r\n", totalMusicFrames);

    locate(0, 6);
    printf("YM2149F REGISTER address : %X \r\n", PSG_ADDRESS_REGISTER);
    printf("YM2149F DATA     address : %X \r\n", PSG_ADDRESS_WRITE_DATA);

    locate(28, 10);
    printf("Frame [_______] / [%07d]", totalMusicFrames);
}

void displayGreetings()
{
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

__uint8_t volumes[5];

void Run()
{
    // inits display in medium resolution with a custom palette
    screenContext = initMediumResolution();

    displayGreetings();

    Buffer *buffer = loadFile(YM3_FILE);

    initPlayer(buffer);
    displayInfo(buffer);

    locate(0, 9);
    printf("Removing KEYCLICK Sound");
    __uint8_t originalKeyClick = read_byte((__uint8_t *)0x00000484);
    write_byte(0, (__uint8_t *)0x484);

    Jdisint(13);
    Xbtimer(0, 7, 246, asm_timerA_Routine);
    Jenabint(13);

    locate(0, 10);
    puts("Timer A routine installed");

    int rest = 0;

    locate(0, 12);
    puts("| AL | AH | BL | BH | CL | CH | NF | MC | AA | BA | CA | EH | EL | ES |");
    locate(0, 13);
    puts("|---------------------------------------------------------------------|");
    
    locate(0, 16);
    printf("Channel 1\r\n");
    printf("Channel 2\r\n");
    printf("Channel 3\r\n");
    printf("Env. level\r\n");
    printf("Total\r\n");

    __uint8_t flag = 1;
    __uint32_t key;

    __uint8_t poll;
    __uint8_t scancode;

    while ((read_byte(SCANCODE_ADDRESS) != 129))
    {
        // check keyboard
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

        // status bar
        locate(26, 10);
        rest = (currentMusicFrame / 10) % 8;
        putchar(char_anim[rest]);

        locate(35, 10);
        printf("%07d\n", currentMusicFrame);

        // PSG register bar
        locate(0, 14);
        putchar('|');
        __uint8_t total = 0;
        
        for (int i = 0; i < 14; i++)
        {
            __uint8_t value = *(registerPointers[i]);
            printf(" %02X |", value);
            if (i >= 8 && i <= 10)
            {
                __uint8_t value = (*registerPointers[i]);
                
                if (value & 0b00010000)
                {
                    value = (*registerPointers[11]) & 0b00011111 * 2;
                    volumes[3] = value;
                }
                else
                { 
                    value &= ((value) & 0b00001111);
                    volumes[i - 8] = value * 2;  
                    total +=  value;
                }
            }
        }

        volumes[4] = total;
    
        // VUMETER
        for (int v = 0; v < 5; v++)
        {
            locate(11, 16 + v);
           
            for (int i = 0; i < volumes[v]; i++)
            {
                putchar('=');
            }
            puts("\33K");
        }

        // Vsync();
    }

    Xbtimer(0, 0, 0, asm_timerA_Routine);

    soundOff();

    write_byte(originalKeyClick, (__uint8_t *)0x484);

    locate(0, 21);
    printf("Timer A routine removed and KeyClick configuration restored\r\n");
    printf("Cleaning memory...\r\n");
    freeBuffer(buffer);
    printf("Finished. Press [ENTER] to go back to Desktop.\r\n");
    Cconin();
    getchar();

    restoreScreenContext(screenContext);
}

int main(int argc, char *argv[])
{
    Supexec(&Run);
}
