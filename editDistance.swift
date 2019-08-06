class Solution {
    func minDistance(_ word1: String, _ word2: String) -> Int {
        var distMatrix:[[Int]] = Array(repeating: Array(repeating: 0, count: word2.count + 1), count: word1.count + 1)
        for i in 1 ..< word1.count + 1 {
            distMatrix[i][0] = i
        }
        for j in 1 ..< word2.count + 1 {
            distMatrix[0][j] = j
        }
        
        for j in 1 ..< word2.count + 1 {
            for i in 1 ..< word1.count + 1 {
                let insertion = distMatrix[i][j-1] + 1
                let deletion = distMatrix[i-1][j] + 1
                let match = distMatrix[i-1][j-1]
                if word1[i-1] == word2[j-1] {
                    distMatrix[i][j] = min(insertion, deletion, match)
                } else {
                    distMatrix[i][j] = min(insertion, deletion, match + 1)
                }
            }
        }
        return distMatrix[word1.count][word2.count]
    }
}

extension String {
    subscript (i: Int) -> String {
        let idx = index(startIndex, offsetBy: i)
        return String(self[idx])
    }
}
