//https://leetcode.com/problems/sort-colors/

class Solution {
    func sortColors(_ nums: inout [Int]) {
        var counts = [0, 0, 0] 
        var k = 0
        for i in nums {
            counts[i] += 1
        }
        for (i, count) in counts.enumerated() {
            for _ in 0..<count {
                nums[k] = i
                k = k + 1
            }
        }
    }
}
