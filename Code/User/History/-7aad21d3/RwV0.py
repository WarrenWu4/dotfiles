def solution(nums, k):

    counter = {}

    # for every number, record the frequency
    for num in nums:
        counter[counter.get(num, num)] += 1

    # sort counter by frequency (value in this case)
    kVal = sorted(counter.values(), reverse=True)


    return kVal[:k]


def main()
    print(solution([1, 1, 1, 2, 2, 3], 2))