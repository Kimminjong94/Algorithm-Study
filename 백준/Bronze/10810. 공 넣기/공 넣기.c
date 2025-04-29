#include <stdio.h>

int main() {
    int N, M;
    scanf("%d %d", &N, &M);

    int baskets[101] = {0};  // N 최대 100이므로 101개 크기 선언

    for (int m = 0; m < M; m++) {
        int i, j, k;
        scanf("%d %d %d", &i, &j, &k);
        for (int b = i; b <= j; b++) {
            baskets[b] = k;  // 범위 내 바구니에 공 번호 k 넣기
        }
    }

    for (int n = 1; n <= N; n++) {
        printf("%d ", baskets[n]);
    }
    printf("\n");

    return 0;
}