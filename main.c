/**
 * main.c
 *
 * Created by Zhiming Wang on November 28, 2014.
 */

#include <stdio.h>
#include <stdint.h>
#include <stdlib.h>
#include <assert.h>

#define NUM_WORDS 10

char* getDiceWd (int n);

int main(int argc, const char *argv[])
{
    FILE *fp = fopen("/dev/urandom", "r");
    
    if (!fp) {
        perror("failed to open /dev/urandom");
        exit(-1);
    }

    for (unsigned i = 0; i < NUM_WORDS; i++) {
        /* Diceware requires 13 bits per word.
           We read 2 bytes and shift 3 bits. */
        uint16_t rand = ((fgetc(fp) << 8) + fgetc(fp)) >> 3;
        assert(rand < 1u << 13 && "random integer outside range 0--8191");
        printf("%s\n", getDiceWd((int)rand));
    }
}
