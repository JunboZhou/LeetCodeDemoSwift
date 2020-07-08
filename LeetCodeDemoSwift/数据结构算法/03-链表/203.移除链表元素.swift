//
//  203.移除链表元素.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/7/7.
//  Copyright © 2020 Bob. All rights reserved.
//
/**
* 203. 移除链表元素
* https://leetcode-cn.com/problems/remove-linked-list-elements/
*
* 删除链表中等于给定值 val 的所有节点。
* 示例:
* 输入: 1->2->6->3->4->5->6, val = 6
* 输出: 1->2->3->4->5
*/

import UIKit
class Test203: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func removeElements(_ head: ListNode?, _ val: Int) -> ListNode? {
        if head == nil {
            return nil
        }
        var newHead = ListNode(0)
        newHead.next = head
        let node = newHead
        
        while newHead.next != nil {
            if newHead.next?.val == val {
                newHead.next = newHead.next?.next
            } else {
                newHead = newHead.next!
            }
        }
        
        return node.next
        
    }
    
}
