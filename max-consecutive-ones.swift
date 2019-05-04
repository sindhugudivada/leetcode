// https://leetcode.com/problems/max-consecutive-ones/submissions/

class Solution {
    func findMaxConsecutiveOnes(_ nums: [Int]) -> Int {
        var max = 0
        var count = 0
        for i in 0..<nums.count {
            count = (count + nums[i]) * nums[i]
            if max < count {
                max = count
            }
        }
        return max
    }
}
