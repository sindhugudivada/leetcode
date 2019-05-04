https://leetcode.com/problems/reverse-vowels-of-a-string/

class Solution {
    func reverseVowels(_ s: String) -> String {
        var vowels: [Character] = ["a","e","i","o","u","A","E","I","O","U"]
        var array = Array(s)
        if s == "" { return "" }
        var start = 0
        var end = s.length - 1
        while (start < end) {
            while start < end && !vowels.contains(array[start]) {
                start += 1
            }
            while start < end && !vowels.contains(array[end]) {
                end -= 1
            }
            if array[start] != array[end] {
                var temp = array[start]
                array[start] = array[end]
                array[end] = temp
            }
            start = start + 1
            end = end - 1
        }
        return String(array)
    }
}
