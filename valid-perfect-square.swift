// https://leetcode.com/problems/valid-perfect-square/submissions/

class Solution {
    func isPerfectSquare(_ num: Int) -> Bool {
        if num % 10 == 2 || num % 10 == 3 || num % 10 == 7 || num % 10 == 8 { return false }
        var i = 1
        while i <= num {
            if i * i == num {
                return true
            } else {
                i = i + 1
            }
        }
        return false
    }
}
