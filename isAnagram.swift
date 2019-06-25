class Solution {
    func isAnagram(_ s: String, _ t: String) -> Bool {
        var seen: [Character: Int] = [:]
        for char in s {
            seen[char] = seen[char, default: 0] + 1
        }
        for char in t {
            if seen[char] == nil {return false}
            seen[char] = seen[char]! - 1
        }
        for key in seen.keys {
            if seen[key] != 0 {return false}
        }
        return true
    }
}
