#include <stdio.h>

int main() {
    int T;
    scanf("%d", &T); // 테스트 케이스 개수 입력

    for (int i = 1; i <= T; i++) {
        int A, B;
        scanf("%d %d", &A, &B); // A와 B 입력
        printf("Case #%d: %d\n", i, A + B); // 형식에 맞게 출력
    }

    return 0;
}