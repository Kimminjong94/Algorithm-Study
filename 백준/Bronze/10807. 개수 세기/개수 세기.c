#include <stdio.h>

int main() {
    int N, v;
    int count = 0;
    int numbers[100];

    // 정수의 개수 입력
    scanf("%d", &N);

    // 정수 N개 입력
    for (int i = 0; i < N; i++) {
        scanf("%d", &numbers[i]);
    }

    // 찾으려는 정수 v 입력
    scanf("%d", &v);

    // v의 개수 세기
    for (int i = 0; i < N; i++) {
        if (numbers[i] == v) {
            count++;
        }
    }

    // 결과 출력
    printf("%d\n", count);

    return 0;
}