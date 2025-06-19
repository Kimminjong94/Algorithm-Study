#include <stdio.h>

int main() {
    int N;
    scanf("%d", &N);

    int result = 0;

    // 1부터 N-1까지 검사
    for (int i = 1; i < N; i++) {
        int num = i;
        int sum = i;

        // 자리수 더하기
        while (num > 0) {
            sum += num % 10;
            num /= 10;
        }

        // 분해합이 N이면 정답
        if (sum == N) {
            result = i;
            break;
        }
    }

    printf("%d\n", result);
    return 0;
}