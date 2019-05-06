// https://leetcode.com/problems/sort-colors/


class Solution {
    func sortColors(_ nums: inout [Int]) {
        var dict: [Int:Int] = [:]
        var index = 0
        for num in nums {
            if dict.keys.contains(num) {
                dict[num] = dict[num]! + 1
            } else {
                dict[num] = 1
            } 
        } 
        for i in 0...2 {
            if let count = dict[i] {
                var total = count
                while total > 0 {
                      nums[index] = i
                      index = index + 1
                      total = total - 1
                }
            }
        }
        
    }
}
