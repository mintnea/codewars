// 22th march 2023
// ############################
// Your task, is to create N×N multiplication table, of size provided in parameter.

// For example, when given size is 3:

// 1 2 3
// 2 4 6
// 3 6 9
// For the given example, the return value should be:

// [[1,2,3],[2,4,6],[3,6,9]]
// ############################

class Kata {
    static def multiplicationTable(Integer size) {
        def arr =[]
        for(int i in 1..size) {
          def miniArr = []
          for(int y in 1..size)
            miniArr.add(y*i)
          arr.add(miniArr)
        }
        return arr
    }
}