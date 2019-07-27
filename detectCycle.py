# Definition for singly-linked list.
# class ListNode(object):
#     def __init__(self, x):
#         self.val = x
#         self.next = None

class Solution(object):
    def detectCycle(self, head):
        """
        :type head: ListNode
        :rtype: ListNode
        """      
        slow = fast = head
        
        while fast and fast.next:
            slow = slow.next
            fast = fast.next.next
            if slow is fast:
                while slow != head:     
                    head = head.next
                    slow = slow.next      
                return slow
