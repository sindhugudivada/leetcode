class MinStack:

    def __init__(self):
        """
        initialize your data structure here.
        """
        self.stack = []
        self.minstack = []
        self.size = 0
        
    def push(self, x: int) -> None:
        if not self.minstack: 
            self.minstack.append(x)
        else:
            if x <= self.minstack[-1]:
                self.minstack.append(x)
        self.stack.append(x)    
        
    def pop(self) -> None:
        if self.stack[-1] == None:
            return 
        else:
            if self.minstack[-1] == self.stack[-1]:
                self.stack.pop()
                self.minstack.pop()   
            else:
                self.stack.pop()
                
    def top(self) -> int:
        return self.stack[-1]
        
    def getMin(self) -> int:
        return self.minstack[-1]
        


# Your MinStack object will be instantiated and called as such:
# obj = MinStack()
# obj.push(x)
# obj.pop()
# param_3 = obj.top()
# param_4 = obj.getMin()
