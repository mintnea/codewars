#21th march 2023
############################
# Complete the solution so that it splits the string into pairs of two characters. If the string contains an odd number of characters then it should replace the missing second character of the final pair with an underscore ('_').

# Examples:

# * 'abc' =>  ['ab', 'c_']
# * 'abcdef' => ['ab', 'cd', 'ef']
############################


def solution(s):
    word = ""
    arr = []
    currPos = 0
    for ch in list(s):
        if(len(word)<= 1):
            word = word+""+ch
            if(len(list(s)) == currPos+1):
                if(len(word)<= 1):
                    word = word+"_"
                arr.append(word)
                break
        else:
            arr.append(word)
            word = ch
            if(len(list(s)) == currPos+1):
                word = word+"_"
                arr.append(word)
                break
        currPos += 1
    return arr