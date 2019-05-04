// https://leetcode.com/problems/find-common-characters/

class Solution {
    func commonChars(_ A: [String]) -> [Character] {
        var output : [Character] = []
        var dict: [Character: Int] = [:]
        for char in A[0] {
            if dict.keys.contains(char) {
                dict[char] = dict[char]!+1
            } else { dict[char] = 1 }
        }
            for word in A[1...] {
                for key in dict.keys {
                    var count = word.characters.filter { $0 == key }.count
                    dict[key] = min(dict[key]!, count)
                }
            }
        for (key,value) in dict {
            for _ in 0..<value {
                output.append(key)
            }
        }
       return output  
    }
}
