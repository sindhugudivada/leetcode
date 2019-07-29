class Solution:
    def addBinary(self, a: str, b: str) -> str:
        carry = 0 
        a = list(a)
        b = list(b)
        result = '' 
        
        while a or b or carry:
            if a:
                carry += int(a.pop())
            if b:
                carry += int(b.pop())
            result += str(carry%2)
            carry = carry // 2
        return result[::-1]    
        
