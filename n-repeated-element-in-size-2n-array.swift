//https://leetcode.com/problems/n-repeated-element-in-size-2n-array/submissions/

class Solution {
    func repeatedNTimes(_ A: [Int]) -> Int {
        var dict: [Int:Int] = [:]
        var count = 1
        for num in A {
            if dict.keys.contains(num) {
                count = count + 1
                if A.count/2 == count {
                    return num
                }
            } else {
                dict[num] = count
            }
        }
    return 0    
    }
}
