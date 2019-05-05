https://leetcode.com/problems/monotonic-array/

class Solution {
    func isMonotonic(_ A: [Int]) -> Bool {
        return isIncreasing(A) || isDecreasing(A) 
    }
    
    func isIncreasing(_ A: [Int]) -> Bool {
        for i in 0..<A.count-1 {
            if A[i] > A[i+1] {
                return false
            }
        }
        return true
    }
    func isDecreasing(_ A: [Int]) -> Bool {
        for i in 0..<A.count-1 {
            if A[i] < A[i+1] {
                return false
            }
        }
        return true
    }
}
