//https://leetcode.com/problems/reverse-integer/submissions/

class Solution {
    func reverse(_ x: Int) -> Int {
         var y = x 
         var revNum: Int = 0
         while y != 0 {
             var num = y % 10 
             y = y / 10
             revNum = revNum * 10 + num
         }
        if revNum > Int(Int32.max) || revNum < Int(Int32.min) { return 0 }
        return revNum
    }
}

