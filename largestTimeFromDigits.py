from itertools import permutations
class Solution:
    def largestTimeFromDigits(self, A: List[int]) -> str:
        maximum = 2359
        temp = 0
        times = []
        for i in itertools.permutations(A, len(A)):
            tmp = str(i[0]) + str(i[1]) + str(i[2]) + str(i[3])
            if int(tmp) < maximum and i[2] <= 5:
                times.append(tmp)  
        if not times:
            return ""
        else:
            final = max(times) 
        return str(final[0]) + str(final[1]) + ":" + str(final[2]) + str(final[3])
