//https://leetcode.com/problems/maximum-depth-of-binary-tree/


/**
 * Definition for a binary tree node.
 * public class TreeNode {
 *     public var val: Int
 *     public var left: TreeNode?
 *     public var right: TreeNode?
 *     public init(_ val: Int) {
 *         self.val = val
 *         self.left = nil
 *         self.right = nil
 *     }
 * }
 */
class Solution {
    func maxDepth(_ root: TreeNode?) -> Int {
         var countLeft = 1
         var countRight = 1
         if root == nil {
             return 0
         } 
         if let left = root?.left {
             countLeft =  1 + maxDepth(left) 
         }
         if let right = root?.right {
             countRight = 1 + maxDepth(right) 
         }
         return max(countLeft,countRight)
    }
}

