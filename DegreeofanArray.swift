https://leetcode.com/problems/degree-of-an-array/

class Solution {
    
     func findDegree(_ nums: [Int],_ key: Int) -> Int {
         guard let first = nums.firstIndex(of: key) else { return 0 }
         guard let last = nums.lastIndex(of: key) else { return 0 }
         return last - first + 1
     }
    
    
    func minLength(_ dict: [Int:Int],_ nums: [Int]) -> Int {
        var maxKey = -1
        var maxValue = -1
        var minDegree = Int.max
        for (key, value) in dict {
            if value > maxValue  {
                maxKey = key
                maxValue = value
            }
        } 
        for (key, value) in dict {
            if value == maxValue  {
                minDegree = min(minDegree, findDegree(nums,key))
            }   
        }
    return minDegree
    }
    
    func findShortestSubArray(_ nums: [Int]) -> Int {
         var dict: [Int:Int] = [:]
         for i in 0..<nums.count {
             if dict.keys.contains(nums[i]) {
                     dict[nums[i]] = dict[nums[i]]! + 1
             } else {
                 dict[nums[i]] = 1
             }  
         }
    
        return minLength(dict,nums)
    
    }       
}
