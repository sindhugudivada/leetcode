https://leetcode.com/problems/non-decreasing-array

class Solution {
    func checkPossibility(_ nums: [Int]) -> Bool {
        guard nums.count > 2 else { return true }
        var failCount = 0
        for i in 0..<nums.count - 1 {
            if nums[i] > nums[i + 1] {
                failCount += 1
            }
            if i < nums.count - 3 {
                if nums[i] > nums[i + 2], nums[i + 1] > nums[i + 3] {
                    return false
                }
            }
        }
        return failCount <= 1
    }
}
