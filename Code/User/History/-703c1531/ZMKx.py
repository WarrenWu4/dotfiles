def solution(strs):
    # set count of each letter (which shoul be unique as the key of a dictionary)
    dict = {}
    for str in strs:
        # get count
        count = [0]*26
        for c in str:
            # convert to ascii and append at that index
            count[ord(c)-97] += 1
        # if count in dictionary append to the end value
        dict["".join(count)].append(str)

    # return values of dictionary
    return dict.values()

def main():
    test1 = ["eat", "tea", "tan", "ate", "nat", "bat"]
    print(solution(test1))

if __name__ == "__main__":
    main()