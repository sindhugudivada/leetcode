class Solution:
    def isAnagram(self, s: str, t: str) -> bool:
        counter = {}
        for char in s:
            counter[char] = counter.get(char, 0) + 1
        for char in t:
            if char not in counter: return False
            counter[char] -= 1
        for count in counter.values():
            if count != 0:
                return False
        return True
