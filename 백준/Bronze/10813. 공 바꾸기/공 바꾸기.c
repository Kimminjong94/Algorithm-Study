#include <stdio.h>

int main() {
    int N, M;
    int basket[101];  // 바구니는 1번부터 N번까지라 1~100까지 공간 확보

    scanf("%d %d", &N, &M);

    // 처음에 바구니에 같은 번호의 공 넣기
    for (int i = 1; i <= N; i++) {
        basket[i] = i;
    }

    // 공 바꾸기
    for (int k = 0; k < M; k++) {
        int i, j, temp;
        scanf("%d %d", &i, &j);

        // i번과 j번 바구니의 공 교환
        temp = basket[i];
        basket[i] = basket[j];
        basket[j] = temp;
    }

    // 결과 출력
    for (int i = 1; i <= N; i++) {
        printf("%d ", basket[i]);
    }

    return 0;
}