#include <stdio.h>
#include <string.h>
#include <math.h>

int main() {
    char N[37];
    int B;
    long long result = 0;
    int len, i, value;

    scanf("%s %d", N, &B);
    len = strlen(N);

    for (i = 0; i < len; i++) {
        if (N[i] >= '0' && N[i] <= '9') {
            value = N[i] - '0';
        } else if (N[i] >= 'A' && N[i] <= 'Z') {
            value = N[i] - 'A' + 10;
        }

        result = result * B + value;
    }

    printf("%lld\n", result);
    return 0;
}