//
//  83.删除排序链表中的重复元素.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/7/8.
//  Copyright © 2020 Bob. All rights reserved.
//

/**
* 83. 删除排序链表中的重复元素
* https://leetcode-cn.com/problems/remove-duplicates-from-sorted-list/
*
* 给定一个排序链表，删除所有重复的元素，使得每个元素只出现一次。
*
* 示例 1:
*
* 输入: 1->1->2
* 输出: 1->2
* 示例 2:
*
* 输入: 1->1->2->3->3
* 输出: 1->2->3
*/

import UIKit
class Test83: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    
    func deleteDuplicates(_ head: ListNode?) -> ListNode? {
        if head == nil || head?.next == nil {
            return head
        }
        
        var tempHead = head;
        
        while tempHead?.next != nil {
            if tempHead?.val == tempHead?.next?.val {
                tempHead?.next = tempHead?.next?.next
            } else {
                tempHead = tempHead?.next
            }
        }
        
        return head
    }
    

}
