class Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var triplets: [[Int]] = []
        if nums.count < 3 {
           return triplets
        }         
        var nums1 = nums.sorted()
        var currentSum: Int = 0
        for i in 0...nums1.count-2{
            var low = i + 1
            var high = nums1.count - 1
            while low < high {
                currentSum = nums1[i] + nums1[low] + nums1[high]
                if currentSum == 0 {
                    triplets.append([nums1[i],nums1[low],nums1[high]])
                    high = high - 1
                    low = low + 1 
                } else if currentSum > 0 {
                    high = high - 1
                } else {
                    low = low + 1
                } 
            }  
        }
        return Array(Set(triplets)) 
    }
}
