//
//  110.平衡二叉树.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/8/4.
//  Copyright © 2020 Bob. All rights reserved.
//
/**
* https://leetcode-cn.com/problems/balanced-binary-tree/
*/
import UIKit

class Test110: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    func isBalanced(_ root: TreeNode?) -> Bool {
        if root == nil {
            return true
        }
        
        return (abs(height(root?.left) - height(root?.right)) <= 1) &&
               isBalanced(root?.left) &&
               isBalanced(root?.right)
    }
    
    func height(_ node: TreeNode?) -> Int {
        if node == nil {
            return 0;
        }
        return max(height(node?.left), height(node?.right)) + 1
    }
    
    public class TreeNode {
        public var val: Int
        public var left: TreeNode?
        public var right: TreeNode?
        public init(_ val: Int) {
            self.val = val
            self.left = nil
            self.right = nil
        }
    }


}
