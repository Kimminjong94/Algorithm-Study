#include <stdio.h>

int main() {
    int N, X;
    scanf("%d %d", &N, &X);

    int A[10000];  // 최대 10000개

    for (int i = 0; i < N; i++) {
        scanf("%d", &A[i]);
    }

    for (int i = 0; i < N; i++) {
        if (A[i] < X) {
            printf("%d ", A[i]);
        }
    }

    return 0;
}