//https://leetcode.com/problems/search-in-a-binary-search-tree/submissions/

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
    func searchBST(_ root: TreeNode?, _ val: Int) -> TreeNode? {
         if root == nil || root!.val == val  { return root } 
         if val > root!.val { 
            return searchBST(root?.right,val)
         } else {
            return searchBST(root?.left,val)
             }  
    }
}
