

https://leetcode.com/problems/k-diff-pairs-in-an-array/


class Solution {
    func findPairs(_ nums: [Int], _ k: Int) -> Int {
        if nums.count == 0 || k < 0 {
            return 0
        }
        
        var dict = [Int: Int]()
        var count = 0
        
        for num in nums {
            if let value = dict[num] {
                dict[num] = value + 1
            } else {
                dict[num] = 1
            }
        }
        for (key, value) in dict {
            if k == 0 {
                if value >= 2 {
                    count += 1
                }
            } else {
                if dict.keys.contains(key + k) {
                    count += 1
                }
            }
        }
        return count
    }
}
