class Solution:
    def plusOne(self, digits: List[int]) -> List[int]:
        carry = 0
        sol = [0] * (len(digits))
        total = 0
        # str_digits = [str(x) for x in digits]
        # number = int("".join(abc_str))
        sol[-1] = (digits[-1] + 1) % 10  
        carry = (digits[-1] + 1) // 10
        for i in range(len(digits)-2 , -1, -1):
            sol[i] = (digits[i] + carry) % 10 
            carry = (digits[i] + carry)  // 10
        if carry == 1:
            return [1] + sol
        return sol
