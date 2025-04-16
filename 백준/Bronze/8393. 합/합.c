#include <stdio.h>

int main() {
    
    int a;
    scanf("%d", &a);
    
    int answer = 0;
    
    for (int i = 1; i<=a; i++) {
        answer += i;
    }
    
    printf("%d", answer);
    
    return 0;
}