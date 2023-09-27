def solution(nums, k):

    counter = {}
    freq = [[] for i in range(len(nums) + 1)]

    # for every number, record the frequency
    for num in nums:
        counter[num] = 1 + counter.get(nums, 0)
    # reverse map frequency from key -> value to value -> key
    for key, value in counter.items():
        freq[value].append(key)

    ans = []
    kTracker = 0
    for i in range(len(freq)-1, 0, -1):
        for n in freq[i]:
            ans.append(n)
            if (len(ans) == k):
                return ans

    return ans


def main():
    print(solution([1, 1, 1, 2, 2, 3, 3, 3], 2))


if __name__ == '__main__':
    main()