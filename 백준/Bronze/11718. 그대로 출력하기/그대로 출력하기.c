#include <stdio.h>

int main(void) {
    char line[101]; // 각 줄이 최대 100글자이므로 +1 (널문자)

    // 입력의 끝(EOF)까지 반복
    while (fgets(line, sizeof(line), stdin) != NULL) {
        printf("%s", line); // fgets는 개행문자(\n)까지 읽으므로 개행 추가할 필요 없음
    }

    return 0;
}

