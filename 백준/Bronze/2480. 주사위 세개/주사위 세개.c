#include <stdio.h>

int main() {
    int a, b, c;
    scanf("%d %d %d", &a, &b, &c);

    int reward = 0;

    if (a == b && b == c) {
        // 같은 눈이 3개
        reward = 10000 + a * 1000;
    } else if (a == b || a == c) {
        // 같은 눈이 2개 (a와 b 또는 a와 c)
        reward = 1000 + a * 100;
    } else if (b == c) {
        // 같은 눈이 2개 (b와 c)
        reward = 1000 + b * 100;
    } else {
        // 모두 다른 눈
        int max = a;
        if (b > max) max = b;
        if (c > max) max = c;
        reward = max * 100;
    }

    printf("%d\n", reward);

    return 0;
}
