https://leetcode.com/problems/top-k-frequent-elements/

class Solution:
    def topKFrequent(self, nums: List[int], k: int) -> List[int]:
        log_book = dict()
        for i in nums:
            if i in log_book:
                log_book[i] = log_book[i] + 1
            else:
                log_book[i] = 1
         
        sorted_keys = sorted(log_book, key=log_book.get, reverse=True)
        return sorted_keys[:k]
    
    
    
