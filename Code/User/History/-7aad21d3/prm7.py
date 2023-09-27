def solution(nums, k):

    counter = {}

    # for every number, record the frequency
    for num in nums:
        if counter.get(num) == None:
            counter[num] = 1
        else:
            counter[num] += 1
    kVal = [0]*max(counter.values())
    # reverse map frequency from key -> value to value -> key
    for key, value in counter.items():
        kVal[value-1] = key

    return kVal[-k:]


def main():
    print(solution([1, 1, 1, 2, 2, 3], 2))


if __name__ == '__main__':
    main()