class Solution:
    def merge(self, intervals: List[List[int]]) -> List[List[int]]:
        merged_intervals = []
        intervals = sorted(intervals)
        for interval in intervals:
            if not merged_intervals or merged_intervals[-1][1] < interval[0]:
                merged_intervals.append(interval)
            else:
                merged_intervals[-1][1] = max(merged_intervals[-1][1],interval[1])
                merged_intervals[-1][0] = min(merged_intervals[-1][0],interval[0])
        return merged_intervals        
