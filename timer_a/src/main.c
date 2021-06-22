#include <stdio.h>
#include <sys/types.h>

volatile long int counter=0;

#define locate(x, y) printf("\033Y%c%c", (char)(32 + y), (char)(32 + x))

void __attribute__((interrupt)) handler(void) {
  counter++;
  *( (volatile unsigned char*)0xFFFFFA0FL ) &= ~( 1<<5 ); //  clear in service bit
}

int main() {
  Jdisint(13); /* disable timer A */
  Xbtimer(0, 7, 246, handler); /* install and enable timer A handler on slow prescaler */
  for(;;)
  {
    locate(0,0);  
    printf("%li\n",counter);
    Vsync();
  }
  return 0;
}