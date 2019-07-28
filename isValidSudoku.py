class Solution:
    def isValidSudoku(self, board: List[List[str]]) -> bool:
        
        for row in board:
            if not self.isValid(row):
                return False
        
        for col in zip(*board):
             if not self.isValid(col):
                return False
            
        for i in (0,3,6):
            for j in (0,3,6):
                unit = [board[x][y] for x in range(i,i+3) for y in range(j,j+3)]
                if not self.isValid(unit):
                    return False
        return True
      
    def isValid(self,unit) -> bool:
        s = [x for x in unit if x.isdigit()]
        return len(s) != len(set(s)):
            
                
            
   
