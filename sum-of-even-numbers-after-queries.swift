//https://leetcode.com/problems/sum-of-even-numbers-after-queries/submissions/

class Solution {
    func sumEvenOfArray(_ B: [Int]) -> Int {
        var sum = 0
        for num in B {
            if num % 2 == 0 {
                sum = sum + num
            }  
        }
        return sum
    }
    func isEven(num: Int) -> Bool {
         if num%2 == 0 { return true} 
         return false
    }
    func sumEvenAfterQueries(_ A: [Int], _ queries: [[Int]]) -> [Int] {
        var B = A
        var element = 0
        var output: [Int] = []
        var sum = sumEvenOfArray(B)
            for query in queries {
                var numToAdd = query[0]
                var index = query[1] 
                var evenBefore =  isEven(num: B[index])
                var evenAfter =  isEven(num: (B[index] + numToAdd))
                if evenBefore && !evenAfter {
                    sum = sum - B[index]
                } else if !evenBefore && evenAfter {
                    sum = sum + B[index] + numToAdd
                } else if evenBefore && evenAfter {
                    sum = sum + numToAdd
                }
                B[index] = B[index] + numToAdd
                output.append(sum)
            }
    return output
    }
}
