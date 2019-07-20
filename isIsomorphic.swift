https://leetcode.com/explore/learn/card/hash-table/184/comparison-with-other-data-structures/1117/

class Solution {
    func isIsomorphic(_ s: String, _ t: String) -> Bool {
         return helper(s,t) && helper(t,s) 
    }
    
     func helper(_ s: String, _ t: String) -> Bool {
        var mappings: [Character: Character] = [:]
        if let ssize = s.count as? Int, let tsize = t.count as? Int {
            if ssize != tsize {
               return false 
            }
        }
        
        var arr = Array(t)
        
        for (index,char) in s.enumerated() {
            if !mappings.keys.contains(char) {
                mappings[char] = arr[index]
            } else {
                if mappings[char]! != arr[index] {
                    return false
                }
            }
        }
        return true
    }
}
