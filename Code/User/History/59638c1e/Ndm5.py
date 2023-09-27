def solution(numbers, target):
    
    p1, p2 = 0, len(numbers)-1
    while (p1 < p2):
        if (numbers[p1] + numbers[p2] < target):
            p1 += 1
        elif (numbers[p1] + numbers[p2] > target):
            p2 -= 1
        else:
            return [p1+1, p2+1]
        
    return [-1, -1]

def main():
    print(solution([2,7,11,15], 9))
    print(solution([2,3,4], 6))
    print(solution([-1,0], -1))

if __name__ == "__main__":
    main()