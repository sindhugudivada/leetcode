class Solution:
    def longestCommonPrefix(self, strs: List[str]) -> str:
        if len(strs) == 0: 
            return ""
        shortest = min(strs, key = len)
        for index,character in enumerate(shortest):
            for other in strs:
                if other[index] != character:
                    return other[:index]
        return shortest        
