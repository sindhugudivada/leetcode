# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution(object):
    def traverse(self, root, num):
        for i in range(num):
            root = root.next
        return root

    def count(self,root):
        cnt = 0
        while root:
            root = root.next
            cnt = cnt+1
        return cnt

    def getIntersectionNode(self, headA, headB):
        n = self.count(headA)
        m = self.count(headB)
        diff = abs(n-m)
        if m>n:
            headB = self.traverse(headB, diff)
        else:
            headA = self.traverse(headA, diff)
        while True:
            if headA == headB:
                return headA
            else:
                headA = headA.next
                headB = headB.next
        
