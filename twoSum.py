class Solution:
    def twoSum(self, numbers: List[int], target: int) -> List[int]:
        left_ptr = 0
        right_ptr = len(numbers) - 1
        while left_ptr < right_ptr:
            curr_sum = numbers[left_ptr] + numbers[right_ptr]
            if numbers[left_ptr] + numbers[right_ptr] == target:
                return [left_ptr + 1, right_ptr + 1]
            if numbers[left_ptr] + numbers[right_ptr] > target:
                right_ptr = right_ptr - 1
            else:
                left_ptr = left_ptr + 1
