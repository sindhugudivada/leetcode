class Solution:
    def findRepeatedDnaSequences(self, s: str) -> List[str]:
        if len(s) < 10:
            return 
        repPatterns = {}
        output = []
        for i in range(0,len(s)-9):
            if s[i:i+10] not in repPatterns:
                repPatterns[s[i:i+10]] = 1
            else:
                repPatterns[s[i:i+10]] += 1
                
        for (k,v) in repPatterns.items():
            if v > 1:
                output.append(k)
        return output
