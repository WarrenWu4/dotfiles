def solution(numbers, target):
    
    p1, p2 = 0, -1
    while (p1 < p2):
        if (numbers[p1] + numbers[p2] < target):
            p1 += 1
        elif (numbers[p1] + numbers[p2] > target):
            p2 -= 1
        else:
            return [p1, p2]
        
    return [-1, -1]