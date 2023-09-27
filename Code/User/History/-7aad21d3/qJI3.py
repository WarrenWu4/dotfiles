def solution(nums, k):

    counter = {}

    # for every number, record the frequency
    for num in nums:
        if counter.get(num) == None:
            counter[num] = 1
        else:
            counter[num] += 1
    kVal = [[] for i in range(len(nums)-1)]
    # reverse map frequency from key -> value to value -> key
    for key, value in counter.items():
        kVal[value-1].append(key)

    ans = []
    kTracker = 0
    for i in range(len(nums)-1):
        if (kTracker == k-1):
            break
        if (kVal[-1-i] != []):
            kTracker += 1
            ans.extend(kVal[-1-i])

    return ans


def main():
    print(solution([1, 1, 1, 2, 2, 3, 3, 3], 2))


if __name__ == '__main__':
    main()