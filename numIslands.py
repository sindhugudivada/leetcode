class Solution {
    func numIslands(_ grid: [[Character]]) -> Int {
        if grid.count == 0 { return 0 }
        var copy = grid
        
        var count = 0
        
        for row in 0..<copy.count {
            for col in 0..<copy[0].count {
                count += helper(&copy, row, col)
                
            }
        }
        return count
    }
    
    func helper(_ grid: inout [[Character]], _ row: Int, _ col: Int) -> Int {
        if row < 0 || row > grid.count-1 || col < 0 || col > grid[0].count-1 {
            return 0
        }
        if grid[row][col]  == "0" { return 0 }
        grid[row][col] = "0"
        helper(&grid, row+1, col)
        helper(&grid, row-1, col)
        helper(&grid, row, col-1)
        helper(&grid, row, col+1)
        return 1
    }
}
