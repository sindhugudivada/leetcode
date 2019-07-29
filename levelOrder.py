from collections import deque
# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    
    def levelOrder(self, root: TreeNode) -> List[List[int]]:
        if root is None:
            return []
        q = deque([root])
        result = []
        while (q):
            levelNodes = len(q)
            level = []
            for _ in range(levelNodes):
                curr = q.popleft()
                level.append(curr.val)
                if curr.left:
                    q.append(curr.left)
                if curr.right:
                    q.append(curr.right)
            result.append(level)        
        return result        
            
            
        
        
