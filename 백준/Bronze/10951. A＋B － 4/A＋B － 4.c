#include <stdio.h>

int main() {
    int A, B;

    // scanf의 반환값이 2일 때만 반복 (입력 두 개를 정상적으로 읽었을 때)
    while (scanf("%d %d", &A, &B) != EOF) {
        printf("%d\n", A + B);
    }

    return 0;
}
