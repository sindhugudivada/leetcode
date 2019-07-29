 def romanToInt(self, s: str) -> int:
        roman = {'M': 1000,'D': 500 ,'C': 100,'L': 50,'X': 10,'V': 5,'I': 1}
        sum = 0
        for i in range(0, len(s) - 1):
            if roman[s[i]] < roman[s[i+1]]:
                sum -= roman[s[i]]
            else:
                sum += roman[s[i]]
        return sum + roman[s[-1]]
