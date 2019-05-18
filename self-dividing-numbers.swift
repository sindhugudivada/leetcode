//https://leetcode.com/problems/self-dividing-numbers/submissions/

class Solution {
    func numberIsDivisible(_ leftValue: Int) -> Bool {
        var value = leftValue
        while (value != 0) { 
            var num = value % 10 
            if num == 0 || leftValue % num != 0  {
                return false 
            } else {
                value = value / 10
            }
        }
        return true
    }
    func selfDividingNumbers(_ left: Int, _ right: Int) -> [Int] {
        var leftValue = left 
        var result: [Int] = []
        while(leftValue != right+1) {
            if numberIsDivisible(leftValue) {
                result.append(leftValue)
            }
            leftValue = leftValue + 1
        }
    return result    
    }
}
