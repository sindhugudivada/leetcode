class Solution:
    def isPalindrome(self, s: str) -> bool:
        l = 0
        h = len(s)-1
        while l < h:
            while not s[l].isalnum() and l < h:
                l = l + 1
            while not s[h].isalnum() and l < h:
                h = h - 1
            if s[l].lower() != s[h].lower():
                return False
            l = l + 1
            h = h - 1
        return True     
