//https://leetcode.com/problems/number-of-lines-to-write-string/submissions/

class Solution {
    func numberOfLines(_ widths: [Int], _ S: String) -> [Int] {
        var numOfLines: Int = 1 
        var dataUsed = 0
        var ABC = Array("abcdefghijklmnopqrstuvwxyz")
        var dict: [Character:Int] = [:]
        
        for i in 0..<widths.count {
            dict[ABC[i]] = widths[i]
        }
        
        for char in S {
            dataUsed = dataUsed + dict[char]!
            if dataUsed > 100 {
                numOfLines = numOfLines + 1
                dataUsed = dict[char]!
            }
        }
    return [numOfLines, dataUsed]   
    }
}
