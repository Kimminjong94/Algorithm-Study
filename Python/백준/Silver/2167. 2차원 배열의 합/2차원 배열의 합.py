import sys
input = sys.stdin.readline

# 배열 크기 입력
N, M = map(int, input().split())

# 원본 배열 입력 (1-based로 다루기 위해 padding)
arr = [[0] * (M+1)]
for _ in range(N):
    row = [0] + list(map(int, input().split()))
    arr.append(row)

# prefix sum 배열
ps = [[0] * (M+1) for _ in range(N+1)]
for i in range(1, N+1):
    for j in range(1, M+1):
        ps[i][j] = arr[i][j] + ps[i-1][j] + ps[i][j-1] - ps[i-1][j-1]

# 쿼리 처리
K = int(input())
out = []
for _ in range(K):
    i, j, x, y = map(int, input().split())
    s = ps[x][y] - ps[i-1][y] - ps[x][j-1] + ps[i-1][j-1]
    out.append(str(s))

print("\n".join(out))