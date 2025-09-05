import sys

input = sys.stdin.readline

N = int(input())
stack = []
results = []

for _ in range(N):
    command = input().split()
    
    if command[0] == '1':  # push
        stack.append(int(command[1]))
    elif command[0] == '2':  # pop
        if stack:
            results.append(str(stack.pop()))
        else:
            results.append("-1")
    elif command[0] == '3':  # size
        results.append(str(len(stack)))
    elif command[0] == '4':  # empty
        results.append("1" if not stack else "0")
    elif command[0] == '5':  # top
        if stack:
            results.append(str(stack[-1]))
        else:
            results.append("-1")

print("\n".join(results))