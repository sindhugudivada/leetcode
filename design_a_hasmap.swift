https://leetcode.com/problems/design-hashmap/submissions/


class MyHashMap {
    
    var storage = [[(Int,Int)]]()

    /** Initialize your data structure here. */
    init() {
       self.storage = [[(Int, Int)]](repeating:[] , count: 10)
    }

    /** value will always be non-negative. */
    func put(_ key: Int, _ value: Int) {
        if let index = storage[key % 10].firstIndex(where: { $0.0 == key }) {
           storage[key % 10][index].1 = value
        } else {
           storage[key % 10].append((key,  value))
        }
    }
    
    /** Returns the value to which the specified key is mapped, or -1 if this map contains no mapping for the key */
    func get(_ key: Int) -> Int {
         if let index = storage[key % 10].firstIndex(where: { $0.0 == key }) {
             return storage[key % 10][index].1
         } else {
             return -1
         }    
    }
    
    /** Removes the mapping of the specified value key if this map contains a mapping for the key */
    func remove(_ key: Int) {
        if let index = storage[key % 10].firstIndex(where: { $0.0 == key }) {
            storage[key % 10].remove(at: index)
        }
    }
}

/**
 * Your MyHashMap object will be instantiated and called as such:
 * let obj = MyHashMap()
 * obj.put(key, value)
 * let ret_2: Int = obj.get(key)
 * obj.remove(key)
 */
