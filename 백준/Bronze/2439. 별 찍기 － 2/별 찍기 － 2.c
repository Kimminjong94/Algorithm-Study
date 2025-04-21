#include <stdio.h>

int main() {
    int N;
    scanf("%d", &N);  // 사용자로부터 정수 N을 입력받음

    for (int i = 1; i <= N; i++) {
        // 공백 출력 (N - i개)
        for (int j = 0; j < N - i; j++) {
            printf(" ");
        }
        // 별 출력 (i개)
        for (int j = 0; j < i; j++) {
            printf("*");
        }
        // 줄 바꿈
        printf("\n");
    }

    return 0;
}