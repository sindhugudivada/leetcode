from collections import deque
class Solution:
    def wallsAndGates(self, rooms: List[List[int]]) -> None:
        """
        Do not return anything, modify rooms in-place instead.
        """
        DIR = [(-1,0),(1,0),(0,-1),(0,1)]
        if not rooms:
            return 
        h, w = len(rooms), len(rooms[0])
        
        q = deque([(x,y) for x in range(h) for y in range(w) if rooms[x][y] == 0])
        
        while q:
            row,col = q.popleft()
            dis = rooms[row][col] + 1
            for dx,dy in DIR:
                rx, ry = dx+row, dy+col
                if 0 <= rx < h and 0 <= ry < w and rooms[rx][ry] == 2147483647:
                    rooms[rx][ry] = dis
                    q.append((rx,ry))
        
        
        
        
