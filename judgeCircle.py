from collections import defaultdict
class Solution:
    def judgeCircle(self, moves: str) -> bool:
        cache = defaultdict(int)
        for move in moves:
            cache[move] += 1
        return cache["U"] == cache["D"] and cache["R"] == cache["L"]    
            
