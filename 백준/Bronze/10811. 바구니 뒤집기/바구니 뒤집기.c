#include <stdio.h>

int main() {
    int N, M;
    int basket[101]; // 바구니 개수 최대 100개 + 1 (1번부터 시작)

    scanf("%d %d", &N, &M);

    // 바구니 번호 초기화
    for (int i = 1; i <= N; i++) {
        basket[i] = i;
    }

    // M번 순서 바꾸기
    for (int m = 0; m < M; m++) {
        int i, j;
        scanf("%d %d", &i, &j);

        // i부터 j까지 역순으로 바꾸기
        while (i < j) {
            int temp = basket[i];
            basket[i] = basket[j];
            basket[j] = temp;
            i++;
            j--;
        }
    }

    // 결과 출력
    for (int i = 1; i <= N; i++) {
        printf("%d ", basket[i]);
    }

    return 0;
}