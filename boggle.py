from collections import deque
class Solution:
    def exist(self, board: List[List[str]], word: str) -> bool:
        if not board:
            return False
        for i in range(len(board)):
            for j in range(len(board[0])):
                if self.dfs(board, i, j, word):
                    return True

    def dfs(self,board,i,j,word):
        if len(word) == 0:
            return True
        res = False 
        if (i >= 0 and i < len(board)) and (j >= 0 and j < len(board[0]) ) and word[0] == board[i][j]:
            board[i][j] = '#'
            res = self.dfs(board,i+1,j,word[1:]) or \
                      self.dfs(board,i,j+1,word[1:]) or \
                      self.dfs(board,i-1,j,word[1:]) or \
                      self.dfs(board,i,j-1,word[1:]) 

            board[i][j] = word[0]
        return res    
            
