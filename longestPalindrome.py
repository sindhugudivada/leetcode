class Solution:
    def longestPalindrome(self, s: str) -> str:
        longestStr = ""
        sub = ""
        if len(s) == 1:
            return s
        for i in range(len(s)):
            for j in range(i,len(s)+1):
                if self.helper(s[i:j]):
                    if len(s[i:j]) > len(longestStr):
                        longestStr = s[i:j]                  
        return longestStr   
    
    def helper(self,sub):
        if sub == sub[::-1]:
            return True
        else:
            return False
