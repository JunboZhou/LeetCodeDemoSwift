//
//  206.反转链表.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/7/6.
//  Copyright © 2020 Bob. All rights reserved.
//
/**
* 206. 反转链表
* https://leetcode-cn.com/problems/reverse-linked-list/
* 输入: 1->2->3->4->5->NULL
* 输出: 5->4->3->2->1->NULL
*/

import UIKit
class Test206: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    // 递归法
    func reverseList1(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        let newHead: ListNode? = reverseList(head?.next)
        head?.next?.next = head
        head?.next = nil
        
        return newHead
    }
     
    // 头插法
    func reverseList(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        var headTemp = head
        
        var newHead: ListNode? = nil
        while headTemp != nil {
            let temp = headTemp?.next
            headTemp?.next = newHead
            newHead = headTemp;
            headTemp = temp
        }
        
        return newHead
    }
    
     public class ListNode {
        public var val: Int
        public var next: ListNode?
        public init(_ val: Int) {
            self.val = val
            self.next = nil
        }
    }
}

