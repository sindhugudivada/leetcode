class Solution {
    func generate(_ numRows: Int) -> [[Int]] {
        var result: [[Int]] = [[1],[1,1]]
        if numRows == 0 { return [] }
        if numRows == 1 {
            return [[1]]
        } else if numRows == 2 {
            return result
        } 
        for i in 3...numRows {
            var temp = [Int](repeating: 1, count: i)
            for j in 1..<(i-1) {
                temp[j] = result[i-2][j-1] + result[i-2][j]
            }
            result.append(temp)
        }
    return result    
    }
}
