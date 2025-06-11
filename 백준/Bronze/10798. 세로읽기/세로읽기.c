#include <stdio.h>
#include <string.h>

int main() {
    char words[5][16] = {0};  // 5줄, 최대 15자 + 널문자
    int maxLen = 0;

    // 5줄 입력 받기
    for (int i = 0; i < 5; i++) {
        scanf("%s", words[i]);
        int len = strlen(words[i]);
        if (len > maxLen) maxLen = len;
    }

    // 세로로 읽기
    for (int col = 0; col < maxLen; col++) {
        for (int row = 0; row < 5; row++) {
            if (words[row][col] != '\0') {
                printf("%c", words[row][col]);
            }
        }
    }

    return 0;
}