//
//  915. 分割数组.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/6/18.
//  Copyright © 2020 Bob. All rights reserved.
//  https://leetcode-cn.com/problems/partition-array-into-disjoint-intervals/

import UIKit
class Test915: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nums: [Int] = [1,1]
        print(partitionDisjoint(nums))
    }
    
    func partitionDisjoint(_ A: [Int]) -> Int {
        
        let count = A.count
        
        var maxLeft = [Int](repeating: 0, count: count)
        var minRight = [Int](repeating: 0, count: count)
        
        var firstLeft = A[0]
        var leftIndex = 0
        while leftIndex < count {
            firstLeft = max(firstLeft, A[leftIndex])
            maxLeft[leftIndex] = firstLeft
            leftIndex = leftIndex + 1
        }
        
        var firstRight = A[count-1]
        var rightIndex = count-1
        while rightIndex > 0 {
            firstRight = min(firstRight, A[rightIndex])
            minRight[rightIndex] = firstRight
            rightIndex = rightIndex - 1
        }
        
        var tempIndex = 0
        while tempIndex < count - 1 {
            if maxLeft[tempIndex] <= minRight[tempIndex+1] {
                return tempIndex + 1
            }
            tempIndex = tempIndex + 1
        }
        return 0
    }
}
