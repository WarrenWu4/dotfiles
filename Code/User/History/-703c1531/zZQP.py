def solution(strs):
    # set count of each letter (which shoul be unique as the key of a dictionary)
    dict = {}
    for str in strs:
        # get count
        count = [0]*26
        for c in str:
            # convert to ascii and append at that index
            count[ord(c)] += 1
        # if count in dictionary append to the end value
        print(count)
        # otherwise add new key and append to that

    # return values of dictionary
    return 0

def main():
    test1 = ["eat", "tea", "tan", "ate", "nat", "bat"]
    print(solution(test1))

if __name__ == "__main__":
    main()