#include <stdio.h>

int main() {
    int X, N;
    int a, b;
    int sum = 0;

    // 총 금액 입력
    scanf("%d", &X);

    // 물건 종류 수 입력
    scanf("%d", &N);

    // 각 물건의 가격과 개수 입력받아서 총합 계산
    for (int i = 0; i < N; i++) {
        scanf("%d %d", &a, &b);
        sum += a * b;
    }

    // 총 금액과 계산한 금액 비교
    if (sum == X)
        printf("Yes\n");
    else
        printf("No\n");

    return 0;
}