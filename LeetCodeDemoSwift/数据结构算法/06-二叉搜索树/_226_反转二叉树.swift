//
//  _226_反转二叉树.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/7/23.
//  Copyright © 2020 Bob. All rights reserved.
//

import UIKit

class Test226: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func invertTree(_ root: TreeNode?) -> TreeNode? {
        
        if root == nil { return root }
        
        var queue = [TreeNode]();
        queue.append(root!);
        while !queue.isEmpty {
            let node = queue.popLast()
            
            let temp = node?.left
            node?.left = node?.right
            node?.right = temp
            
            if node?.left != nil {
                queue.append((node?.left)!)
            }
            if node?.right != nil {
                queue.append((node?.right)!)
            }
        }
        return root
    }
}


public class TreeNode {
    public var val: Int
    public var left: TreeNode?
    public var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}


