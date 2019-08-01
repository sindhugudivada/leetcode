class Solution:
    def intersection(self, nums1: List[int], nums2: List[int]) -> List[int]:
        cache = {}
        output = []
        
        for num in nums1:
            if num not in cache:
                cache[num] = 1
            else:
                cache[num] += 1
                
        for num in nums2:
            if num in cache:
                if cache[num] != -1:
                    output.append(num)
                    cache[num] = -1
        return output        
                
