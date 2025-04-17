#include <stdio.h>

int main() {
    int H, M;
    scanf("%d %d", &H, &M);

    M -= 45; // 45분을 뺌

    if (M < 0) {
        M += 60;  // 분이 음수가 되면 1시간 차감하고 60분 더함
        H--;      // 시간에서 1을 빼줌
        if (H < 0) {
            H = 23; // 0시 이전은 23시
        }
    }

    printf("%d %d\n", H, M);

    return 0;
}