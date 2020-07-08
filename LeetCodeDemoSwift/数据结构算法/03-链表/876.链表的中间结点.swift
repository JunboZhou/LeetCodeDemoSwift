//
//  876.链表的中间结点.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/7/8.
//  Copyright © 2020 Bob. All rights reserved.
//

import UIKit
class Test876: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /**
     利用链表
     */
    func middleNode(_ head: ListNode?) -> ListNode? {
        var temp = head
        var nums = 0
        while temp != nil {
            temp = temp?.next
            nums = nums + 1
        }
        
        var first = head
        let index = nums >> 1
        var i = 0
        
        while i < index {
            first = first?.next
            i = i + 1
        }
        
        return first
        
    }
    
    /***
     利用快慢指针思想解决
     */
    func middleNode1(_ head: ListNode?) -> ListNode? {
        var slow = head
        var fast = head
        while fast != nil, fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
        }
        return slow
    }
    /**
     利用数组
     */
    func middleNode2(_ head: ListNode?) -> ListNode? {
        var array:[ListNode] = [ListNode]()
        var temHead = head
        
        var num: Int = 0
        
        while temHead != nil {
            array.append(temHead!)
            temHead = temHead?.next
            num = num + 1
        }
        
        return array[num >> 1]
        
    }

    
}
