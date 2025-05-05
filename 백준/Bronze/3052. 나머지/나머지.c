#include <stdio.h>

int main() {
    int num, remain[42] = {0}; // 나머지 개수를 세기 위한 배열 (0~41)
    int count = 0;

    for (int i = 0; i < 10; i++) {
        scanf("%d", &num);
        remain[num % 42] = 1; // 해당 나머지 값을 1로 표시
    }

    for (int i = 0; i < 42; i++) {
        if (remain[i] == 1) {
            count++; // 서로 다른 나머지 개수 세기
        }
    }

    printf("%d\n", count);

    return 0;
}