def solution(people, limit):
    sorted_people = sorted(people)
    
    i = 0
    j = len(sorted_people) - 1
    boats = 0
    
    while i <= j:
        if sorted_people[i] + sorted_people[j] <= limit:
            i += 1
        j -= 1
        boats += 1
    
    return boats