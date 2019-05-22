//https://leetcode.com/problems/add-two-numbers/

/**
 * Definition for singly-linked list.
 * public class ListNode {
 *     public var val: Int
 *     public var next: ListNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.next = nil
 *     }
 * }
 */
class Solution {
    func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var newList:ListNode? = ListNode(0)
        var head = newList
        var carry = 0 
        var l1 = l1
        var l2 = l2
        while l1 != nil || l2 != nil || carry != 0 {
               var sum = ((l1 == nil) ? 0 : l1!.val) + ((l2 == nil) ? 0 : l2!.val) + carry
               carry = sum/10
               newList?.next = ListNode(sum%10)
               newList = newList?.next
               l1 = l1?.next
               l2 = l2?.next
        
        }
    return head?.next

         }

    }
