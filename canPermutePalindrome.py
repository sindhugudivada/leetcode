from collections import Counter
class Solution:
    def canPermutePalindrome(self, s: str) -> bool:
        cache = Counter(s)
        return sum(i % 2 for i in cache.values()) <= 1
        
        
