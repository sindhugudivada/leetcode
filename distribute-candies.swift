//https://leetcode.com/problems/distribute-candies/

class Solution {
    func distributeCandies(_ candies: [Int]) -> Int {
         var sisterCandies: Set<Int> = []
         for candy in candies {
             if !sisterCandies.contains(candy){
                 if sisterCandies.count < candies.count/2 {
                     sisterCandies.insert(candy)
                 }
             } 
         }
         return sisterCandies.count
         
    }
}
