//
//  SingleLinkList.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/7/3.
//  Copyright © 2020 Bob. All rights reserved.
//

import Foundation

class Node<E> {
    var element: E
    var next: Node?
    init(element: E, next: Node?) {
        self.element = element
        self.next = next
    }
}

struct SingleLinkList<E: Comparable> {
    // 元素数量
    private var size: Int?
    // 头节点
    private var first: Node<E>?

    let ELEMENT_NOT_FOUND: Int = -1
    
    var isEmpty: Bool {
        return first == nil
    }
    
    /**
     get
     */
    public func get(index: Int) -> E {
        return node(index: index).element
    }
    
    /**
     set
     */
    public func set(index: Int, newElement: E) -> E {
        let currNode = node(index: index)
        let oldElement: E = currNode.element
        currNode.element = newElement
        return oldElement
    }
    /**
     清空
     */
    mutating public func clear() {
        first = nil
        size = 0
    }
    /**
     尾部添加元素
     */
    mutating public func add(index: Int, newElement: E) {
        rangCheckForAdd(index: index)
        if index == 0 {
            first = Node(element: newElement, next: first)
        } else {
            let pre = node(index: index-1)
            pre.next = Node(element: newElement, next: pre.next)
        }
        size = (size ?? 0) + 1
    }
    /**
     按索引删除
     */
    mutating public func remove(index: Int) -> E {
        rangCheck(index: index)
        let currNode = first!
        if index == 0 {
            first = currNode.next
        } else {
            let preNode = node(index: index-1)
            let tempNode = preNode.next
            preNode.next = tempNode!.next
        }
        size = size! - 1
        return currNode.element
    }
    /**
     按元素返回索引值
     */
    public func indexOf(element: E) -> Int {
        var curNode = first;
        var i = 0
        while i < size! {
            if curNode?.element == element {
                return i
            }
            curNode = curNode?.next
            i = i + 1
        }
        return ELEMENT_NOT_FOUND
    }
    /**
     获取index位置的节点对象
     */
    private func node(index: Int) -> Node<E> {
        rangCheck(index: index)
        var node = first;
        var i: Int = 0
        while i < index {
            node = node?.next
            i = i + 1
        }
        return node!
    }
    
    private func rangCheck(index: Int) {
        if index < 0 || index >= size! {
            outOfBounds(index: index)
        }
    }
    
    private func rangCheckForAdd(index: Int) {
        if index < 0 || index > size ?? 0 {
            outOfBounds(index: index)
        }
    }
    
    private func outOfBounds(index: Int) {
        print("Index: \(index) , Size = \(String(describing: size))")
    }    
}

extension SingleLinkList {
    // 测试用例
    func linkListTest()  {
        var list = SingleLinkList<Int>()
        list.add(index: 0, newElement: 11)
        list.add(index: 1, newElement: 22)
        list.add(index: 2, newElement: 33)
        list.add(index: 3, newElement: 44)
        
        print(list.set(index: 0, newElement: 55))
        print(list)
        
        let temp = list.indexOf(element: 44)
        print(temp)
        
        let old = list.remove(index: 0)
        let element = list.indexOf(element: 22)
        print("old = \(old) , element = \(element)")
    
    }
}
