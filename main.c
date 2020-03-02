#include <stdio.h>
#include <stdlib.h>



int main(int n, const char ** argv) {
    if (n == 1) {
        printf("Hello world, anon\n");
    } else {
        printf("Hello world, %s\n", argv[1]);
    }
}
