class Solution:
    def lengthOfLongestSubstring(self, s: str) -> int:
        l = len(s)
        longest = 0
        left = 0
        i = 0
        found = dict()
        while i < l:
            if s[i] not in found or found[s[i]] < left:
                found[s[i]] = i
            else:
                longest = max(longest, i - left)
                left = found.pop(s[i]) + 1
                found[s[i]] = i
            i += 1
        longest = max(longest, i - left)
        return longest
