//
//  237.删除链表中的节点.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/7/3.
//  Copyright © 2020 Bob. All rights reserved.
//
/**
* 删除链表中的节点
* https://leetcode-cn.com/problems/delete-node-in-a-linked-list/
*/
import UIKit
class Test237: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func deleteNode(_ node: ListNode?) {
        node?.val = (node?.next?.val)!
        node?.next = node?.next?.next
    }
}

 public class ListNode {
    public var val: Int
    public var next: ListNode?
    public init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}
