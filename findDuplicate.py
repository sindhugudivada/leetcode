from collections import defaultdict
class Solution:
    def findDuplicate(self, paths: List[str]) -> List[List[str]]:
        cache = defaultdict(list)
        output = []
        for path in paths:
            splitPath = path.split()
            parentPath,childPath = splitPath[0], splitPath[1:]
            for child in childPath:
                fileName, fileContent = child.split("(")
                fileContent = fileContent[:-1]
                cache[fileContent].append(parentPath + "/" + fileName)
        for value in cache.values():
            if len(value) > 1:
                output.append(value)
        return output
    
