# Definition for a binary tree node.
# class TreeNode:
#     def __init__(self, x):
#         self.val = x
#         self.left = None
#         self.right = None

class Solution:
    def lowestCommonAncestor(self, root: 'TreeNode', p: 'TreeNode', q: 'TreeNode') -> 'TreeNode':
        curr = root
        while curr:
            if curr.val == p.val or curr.val == q.val:
                break
            if p.val < curr.val and q.val < curr.val:
                curr = curr.left
            if p.val > curr.val and q.val > curr.val:
                curr = curr.right    
            if (p.val < curr.val and q.val > curr.val) or (p.val > curr.val and q.val < curr.val):
                break
        return curr    
