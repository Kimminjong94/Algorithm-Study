#include <stdio.h>

int main() {
    int N;
    scanf("%d", &N);

    int count = 1;  // 시작은 1번 방이므로 1
    int maxNum = 1; // 현재 층의 마지막 방 번호

    while (N > maxNum) {
        maxNum += 6 * count;  // 한 층마다 6씩 증가
        count++;
    }

    printf("%d\n", count);

    return 0;
}