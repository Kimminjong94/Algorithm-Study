#include <stdio.h>

int main() {
    int A, B, C;
    scanf("%d %d", &A, &B); // 현재 시각 입력
    scanf("%d", &C);        // 요리 시간 입력

    int totalMinutes = A * 60 + B + C; // 현재 시간 + 요리 시간 총 분으로 변환
    int endHour = (totalMinutes / 60) % 24; // 24시간제로 변경
    int endMinute = totalMinutes % 60;      // 남은 분 계산

    printf("%d %d\n", endHour, endMinute); // 결과 출력

    return 0;
}