//https://leetcode.com/problems/longest-substring-without-repeating-characters/

class Solution {
    func lengthOfLongestSubstring(_ s: String) -> Int {
         if s.count == 0 {
            return 0
        }
         var array = Array(s)
         var left = 0
         var right = 1 
         var maxLength = right - left
         var i = 0
         while (right < array.count) {
             i = left
             while i < right {
                 if array[i] == array[right] {
                     left = i + 1
                     break
                 }
                 i = i + 1
             }
             maxLength = max(maxLength, right-left+1)
             right = right + 1
         }
    return maxLength
    }
}
