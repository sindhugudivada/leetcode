//https://leetcode.com/problems/remove-outermost-parentheses/

class Solution {
    func removeOuterParentheses(_ S: String) -> String {
        var stack:[Character] = []
        var result : String = ""
        var input = Array(S)
        for i in 0..<input.count {
            if input[i] == "(" {
                if stack.count > 0 {
                    result += String(input[i])
                } 
                stack.append(input[i])
            } else {
                if stack.count > 1 {
                    result += String(input[i])
                }
                stack.remove(at:0)
            }  
            }
        return result
    }
}
