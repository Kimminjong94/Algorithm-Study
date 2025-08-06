a = int(input())
total_color = input()

def find_min_painting(color):
    count_red = 0
    count_blue = 0

    for i in range(len(color)):
        if i == 0 or color[i] != color[i - 1]:
            if color[i] == 'R':
                count_red += 1
            else:
                count_blue += 1

    return min(count_red, count_blue) + 1



result = find_min_painting(total_color)
print(result)