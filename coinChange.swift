class Solution {
func coinChange(_ coins: [Int], _ amount: Int) -> Int {
        var numberOfWays = Array( repeating: Array(repeating: Int.max - 1, count: amount + 1), count: coins.count + 1)
        
        for i in 0...coins.count {
            numberOfWays[i][0] = 0
        }
        
        if amount == 0 { return 0 }
        
        for  j in 1 ... coins.count {
            let denom = coins[j-1]
            for i in 1...amount {
                if i - denom >= 0 {
                    numberOfWays[j][i] = min(numberOfWays[j][i-denom] + 1, numberOfWays[j-1][i])
                } else {
                    numberOfWays[j][i] = numberOfWays[j-1][i]
                }
            }
        }
        return numberOfWays[coins.count][amount] == Int.max - 1 ? -1 : numberOfWays[coins.count][amount]
        
    }
}
