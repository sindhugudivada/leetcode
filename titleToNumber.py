class Solution:
    def titleToNumber(self, s: str) -> int:
        letters = "ABCDEFGHIJKLMNOPQRSTUVWXYZ"
        res = 0
        l = len(s)
        for i in s:
            res += (letters.index(i) + 1) * 26 ** (l-1)
            l = l - 1
        return res    
    
