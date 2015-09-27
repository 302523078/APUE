#include "apue.h"

int main(int argc, char* argv[]) {
    int c;
    while ((c = getc(stdin)) != EOF) {
        if (putc(c, stdout) == EOF) {
            perror("output error");
            exit(1);
        }
    }

    if (ferror(stdin)) {
        perror("input error");
        exit(1);
    }
    
    exit(0);

}
