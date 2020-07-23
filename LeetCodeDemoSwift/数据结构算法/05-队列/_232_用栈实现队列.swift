//
//  _232_用栈实现队列.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/7/10.
//  Copyright © 2020 Bob. All rights reserved.
//

class Test232 {
    
    var inStack = [Int]()
    var outStack = [Int]()
    

    /** Initialize your data structure here. */
    init() {

    }
    
    /** Push element x to the back of queue. */
    func push(_ x: Int) {
        while outStack.count > 0 {
            inStack.append(outStack.popLast()!)
        }
        inStack.append(x)
    }
    
    /** Removes the element from in front of queue and returns that element. */
    func pop() -> Int {
        while inStack.count > 0 {
            outStack.append(inStack.popLast()!)
        }
        return outStack.popLast()!
    }
    
    /** Get the front element. */
    func peek() -> Int {
        while inStack.count > 0 {
            outStack.append(inStack.popLast()!)
        }
        return outStack[outStack.count - 1]
    }
    
    /** Returns whether the queue is empty. */
    func empty() -> Bool {
        while inStack.count > 0 {
            outStack.append(inStack.popLast()!)
        }
        return outStack.count > 0 ? false : true
    }
}
