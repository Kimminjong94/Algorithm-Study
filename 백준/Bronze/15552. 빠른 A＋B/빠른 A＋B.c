#include <stdio.h>

int main() {
    int T, A, B;

    scanf("%d", &T);  // 테스트케이스 개수 입력

    for (int i = 0; i < T; i++) {
        scanf("%d %d", &A, &B);  // 두 정수 A와 B 입력
        printf("%d\n", A + B);   // A + B 출력
    }

    return 0;
}