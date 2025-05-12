#include <stdio.h>

int main() {
    int N, M;
    scanf("%d %d", &N, &M);

    int cards[100];
    for (int i = 0; i < N; i++) {
        scanf("%d", &cards[i]);
    }

    int maxSum = 0;

    // 3중 for문으로 3장의 카드 조합을 확인
    for (int i = 0; i < N - 2; i++) {
        for (int j = i + 1; j < N - 1; j++) {
            for (int k = j + 1; k < N; k++) {
                int sum = cards[i] + cards[j] + cards[k];
                if (sum <= M && sum > maxSum) {
                    maxSum = sum;
                }
            }
        }
    }

    printf("%d\n", maxSum);

    return 0;
}