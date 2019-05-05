https://leetcode.com/explore/learn/card/queue-stack/228/first-in-first-out-data-structure/1337/


class MyCircularQueue {

    /** Initialize your data structure here. Set the size of the queue to be k. */
    var array: Array<Int>
    var front: Int
    var rear: Int
    var occupiedSize : Int
    
    init(_ k: Int) {
        array = Array(repeating: 0, count: k)
        occupiedSize = 0
        front = 0
        rear = -1
    }
    
    /** Insert an element into the circular queue. Return true if the operation is successful. */
    func enQueue(_ value: Int) -> Bool {
        if isFull() {
            return false 
        } else {
            rear = (rear+1) % array.count 
            array[rear] = value
            occupiedSize += 1
            return true
        }
    }
    
    /** Delete an element from the circular queue. Return true if the operation is successful. */
    func deQueue() -> Bool {
        if isEmpty() {
            return false
        } else {
            front = (front+1) % array.count
            occupiedSize -= 1
            return true
        }
    }
        
    /** Get the front item from the queue. */
    func Front() -> Int {
        if isEmpty() { return -1 }
        return array[front]
    }
    
    /** Get the last item from the queue. */
    func Rear() -> Int {
         if isEmpty() { return -1 }
        return array[rear]
    }
    
    /** Checks whether the circular queue is empty or not. */
    func isEmpty() -> Bool {
        return occupiedSize == 0
    }
    
    /** Checks whether the circular queue is full or not. */
    func isFull() -> Bool {
        if occupiedSize == array.count {
            return true
        } else {
            return false
        }
    }
}

/**
 * Your MyCircularQueue object will be instantiated and called as such:
 * let obj = MyCircularQueue(k)
 * let ret_1: Bool = obj.enQueue(value)
 * let ret_2: Bool = obj.deQueue()
 * let ret_3: Int = obj.Front()
 * let ret_4: Int = obj.Rear()
 * let ret_5: Bool = obj.isEmpty()
 * let ret_6: Bool = obj.isFull()
 */
