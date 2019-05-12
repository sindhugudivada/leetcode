//https://leetcode.com/problems/transpose-matrix/submissions/

class Solution {
    func transpose(_ A: [[Int]]) -> [[Int]] {
        var rows = A.count
        var columns = A[0].count
        var B = [[Int]](repeating: [Int](repeating: 0, count: rows), count: columns)
        for i in 0..<rows {
            for j in 0..<columns {
                B[j][i] = A[i][j]
            }
        }
        return B
    }
}
