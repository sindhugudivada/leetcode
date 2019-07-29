class Solution:
    def letterCombinations(self, digits: str) -> List[str]:
        mappings = {'2':'abc', '3':'def', '4':'ghi', '5':'jkl', '6':'mno','7': 'pqrs', '8': 'tuv', '9': 'wxyz'}
        
        if len(digits) == 0:
            return []
        
        if len(digits) == 1:
            return (list(mappings[digits]))
        
        prev = self.letterCombinations(digits[:-1])
        curr = mappings[digits[-1]]
        res = [ s + c for s in prev for c in curr]
        return res
    
    
