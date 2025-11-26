from collections import deque

def solution(queue1, queue2):
    q1 = deque(queue1)
    q2 = deque(queue2)
    
    sum1, sum2 = sum(q1), sum(q2)
    total = sum1 + sum2
    
    # 불가능한 경우
    if total % 2 != 0:
        return -1
    
    target = total // 2
    cnt = 0
    max_ops = len(q1) * 3  # 안전하게 최대 이동 횟수 설정

    while cnt <= max_ops:
        if sum1 == target:
            return cnt
        elif sum1 > target:
            # q1에서 q2로 이동
            val = q1.popleft()
            q2.append(val)
            sum1 -= val
            sum2 += val
        else:
            # q2에서 q1로 이동
            val = q2.popleft()
            q1.append(val)
            sum1 += val
            sum2 -= val
        cnt += 1

    return -1