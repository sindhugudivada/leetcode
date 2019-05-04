// https://leetcode.com/problems/maximum-average-subarray-i/
"using sliding window technique"

class Solution {
    func findMaxAverage(_ nums: [Int], _ k: Int) -> Double {
        var largestTotal: Int = 0
        var sum = 0
        for i in 0...k-1 {
            sum = sum + nums[i]
            largestTotal = sum
        }
        for j in k..<nums.count {
            sum = sum + nums[j] - nums[j-k]
            largestTotal = max(sum,largestTotal)
        }
    return Double(largestTotal)/Double(k)   
    }
}
