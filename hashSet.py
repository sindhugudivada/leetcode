//https://leetcode.com/explore/learn/card/hash-table/182/practical-applications/1139/

class MyHashSet:
    storage = [[]]
    
    def __init__(self):
        """
        Initialize your data structure here.
        """
        self.storage = [[] for _ in range(0,10)]

    def add(self, key: int) -> None:
        if not self.contains(key):
            self.storage[key % 10].append(key)    

    def remove(self, key: int) -> None:
        if self.contains(key):
            self.storage[key % 10].remove(key)

    def contains(self, key: int) -> bool:
        """
        Returns true if this set contains the specified element
        """
        if key in self.storage[key % 10]:
            return True
        else:
            return False
        
