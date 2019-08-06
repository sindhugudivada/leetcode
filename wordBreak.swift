class Solution:
    def wordBreak(self, s: str, wordDict: List[str]) -> bool:
        memo = [False for _ in range(len(s) + 1)]
        memo[0] = True
        
        for i in range(1, len(memo) + 1):
            for word in wordDict:
                word_length = len(word)
                if i >= word_length:
                    if memo[i - word_length] and s[i - word_length: i] == word:
                        memo[i] = True
        return memo[len(s)]
