class Solution:
    def countSubstrings(self, s: str) -> int:
        count = 0
        for i in range(len(s)):
            for j in range(1,len(s)-i+1):
                if self.palindrome(s[i:j+i]):
                    count += 1
        return count
    
    def palindrome(self,s):
        if s == s[::-1]:
            return True
