# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def isValidBST(self, root: TreeNode) -> bool:    
        def helper(root, low, high):
            if root is None: return True
            if root.val <= low or root.val >= high:
                return False
            return helper(root.left, low, root.val) and helper(root.right, root.val, high)
        
        return helper(root, -float("inf"), float("inf"))
        
