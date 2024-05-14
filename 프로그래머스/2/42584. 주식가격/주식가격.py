def solution(prices):
    answer_array = []
    stack = []

    for i, price in enumerate(prices):
        while stack and price < prices[stack[-1]]:
            top = stack.pop()
            answer_array[top] = i - top
        stack.append(i)
        answer_array.append(0)

    while stack:
        top = stack.pop()
        answer_array[top] = len(prices) - top - 1

    return answer_array