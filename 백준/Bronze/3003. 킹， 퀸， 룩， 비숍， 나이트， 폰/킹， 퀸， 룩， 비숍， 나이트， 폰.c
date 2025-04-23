#include <stdio.h>

int main() {
    int correct[6] = {1, 1, 2, 2, 2, 8}; // 킹, 퀸, 룩, 비숍, 나이트, 폰의 정해진 개수
    int found[6];
    
    // 입력 받기
    for (int i = 0; i < 6; i++) {
        scanf("%d", &found[i]);
    }
    
    // 차이 계산하여 출력
    for (int i = 0; i < 6; i++) {
        printf("%d ", correct[i] - found[i]);
    }

    return 0;
}