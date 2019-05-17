//https://leetcode.com/problems/merge-sorted-array/

class Solution {
    func merge(_ nums1: inout [Int], _ m: Int, _ nums2: [Int], _ n: Int) {
        nums1 = Array(nums1[..<m])
        nums1 += nums2
        nums1.sort(by: <)
    }
}
