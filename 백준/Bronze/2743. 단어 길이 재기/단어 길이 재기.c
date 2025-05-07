#include <stdio.h>
#include <string.h>

int main() {
    char word[101];   // 최대 100자 + 널문자('\0') 공간 확보
    scanf("%s", word); // 단어 입력받기

    int length = strlen(word); // 문자열 길이 계산
    printf("%d\n", length);    // 길이 출력

    return 0;
}