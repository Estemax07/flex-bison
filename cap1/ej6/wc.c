#include <stdio.h>
#include <ctype.h>

int main(void) {
    long lines = 0;
    long words = 0;
    long chars = 0;

    int c;
    int in_word = 0;

    while ((c = getchar()) != EOF) {
        chars++;

        if (c == '\n')
            lines++;

        if (isalpha((unsigned char)c)) {
            if (!in_word) {
                in_word = 1;
                words++;
            }
        } else {
            in_word = 0;
        }
    }

    printf("%8ld%8ld%8ld\n", lines, words, chars);
    return 0;
}

