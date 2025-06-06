#include <stdio.h>

int main() {
    int B;
    unsigned int N;
    char result[50];  // 10억을 2진수로 바꿔도 32자리 + 넉넉하게 50
    int index = 0;

    scanf("%u %d", &N, &B);

    while (N > 0) {
        int remainder = N % B;
        if (remainder < 10) {
            result[index++] = remainder + '0'; // 숫자 0~9
        } else {
            result[index++] = remainder - 10 + 'A'; // 알파벳 A~Z
        }
        N /= B;
    }

    // 배열에 거꾸로 저장되어 있으므로 뒤집어서 출력
    for (int i = index - 1; i >= 0; i--) {
        printf("%c", result[i]);
    }
    printf("\n");

    return 0;
}