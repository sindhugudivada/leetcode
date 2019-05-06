///https://leetcode.com/problems/baseball-game/

class Solution {
    func calPoints(_ ops: [String]) -> Int {
       var stack: [Int] = []
       var sum: Int = 0
       for str in ops {
           if str == "C" {
               sum = sum - stack.removeLast()
           } else if str == "D" {
               var ele = stack[stack.count-1]
               stack.append(ele*2)
               sum = ele*2 + sum 
           } else if str == "+" {
               var temp = stack[stack.count-1] + stack[stack.count-2]
               sum = sum + temp
               stack.append(temp)
           } else {
               var value = Int(str)
               sum = sum + value!
               stack.append(value!)
             }
           }
    return sum
    }
}
