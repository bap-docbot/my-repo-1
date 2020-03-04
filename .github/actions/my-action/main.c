#include <stdio.h>
#include <stdlib.h>

void create_product(const char *x) {
    FILE *f = fopen("product", "w");
    fputs(x,f);
    fputs("test",f);
    fputc('\n', f);
    fclose(f);
}

int main(int n, const char ** argv) {
    if (n == 1) {
        const char a[] = "anon!";
        printf("Hello world, %s\n", a);
        create_product(a);
    } else {
        printf("Hello world, %s\n", argv[1]);
        create_product(argv[1]);
    };
}
