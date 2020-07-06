//
//  141.环形链表 .swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/7/6.
//  Copyright © 2020 Bob. All rights reserved.
//
/**
* 141. 环形链表  https://leetcode-cn.com/problems/linked-list-cycle/
*/
import UIKit
class Test141: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    /***
     利用快慢指针思想
     */
    func hasCycle(_ head: ListNode?) -> Bool {
        
        if head == nil || head?.next == nil {
            return false
        }
        
        var slow = head
        var fast = head?.next
        while fast != nil , fast?.next != nil {
            slow = slow?.next
            fast = fast?.next?.next
            if slow?.val == fast?.val {
                return true
            }
        }
        
        return false
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
