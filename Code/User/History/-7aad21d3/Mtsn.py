def solution(nums, k):

    counter = {}

    # for every number, record the frequency
    for num in nums:
        if counter.get(num) == None:
            counter[num] = 1
        else:
            counter[num] += 1

    kVal = [[] for i in range(max(counter.values()))]
    print(kVal)
    # reverse map frequency
    for key, value in counter.items():
        kVal[value-1].extend([key])

    return kVal[:k]


def main():
    print(solution([1, 1, 1, 2, 2, 3], 2))


if __name__ == '__main__':
    main()