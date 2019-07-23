class Solution:
    def arrayPairSum(self, nums: List[int]) -> int:
        sorted_array = sorted(nums)
        if len(nums) == 2:
            return min(nums)
        sum = 0
        for i in range(0,len(sorted_array),2):
            sum = sum + min(sorted_array[i],sorted_array[i+1])
            print(sum)
        return sum    
