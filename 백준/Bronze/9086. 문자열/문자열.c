#include <stdio.h>
#include <string.h>

int main() {
    int T;
    char str[1001];  // 문자열 길이가 최대 1000이므로 +1

    scanf("%d", &T);

    for (int i = 0; i < T; i++) {
        scanf("%s", str);
        int len = strlen(str);
        printf("%c%c\n", str[0], str[len - 1]);
    }

    return 0;
}