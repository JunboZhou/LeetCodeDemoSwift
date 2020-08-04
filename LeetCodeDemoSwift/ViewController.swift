//
//  ViewController.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/6/15.
//  Copyright © 2020 Bob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    fileprivate lazy var arrayList = [TreeNode]()
    
    override func viewDidLoad() {
        super.viewDidLoad()
    
    }
    
    func kthLargest(_ root: TreeNode?, _ k: Int) -> Int {
        if k == 0 || root == nil {
            return -1;
        }
        inorder(root)
        let node = arrayList[k - 1];
        return node.val
    }
    
    func inorder(_ root: TreeNode?) {
        if root == nil {
            return
        }
        inorder(root?.right)
        arrayList.append((root?.right)!)
        inorder(root?.left)
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
    

}




