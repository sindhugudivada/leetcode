from collections import deque
class Solution:
    def floodFill(self, image: List[List[int]], sr: int, sc: int, newColor: int) -> List[List[int]]:
        h, w = len(image), len(image[0])
        DIR = [(-1,0),(1,0),(0,-1),(0,1)]
        
        queue = deque()
        queue.append((sr,sc))
        
        oldColor = image[sr][sc]
        image[sr][sc] = newColor
        if oldColor != newColor:
            while queue:
                dx,dy = queue.popleft()
                for x,y in DIR:
                    r = x + dx
                    c = y + dy
                    if 0 <= r < h and 0 <= c < w and image[r][c] == oldColor:
                        queue.append((r,c))
                        image[r][c] = newColor
        return image                 
