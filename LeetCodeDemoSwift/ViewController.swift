//
//  ViewController.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/6/15.
//  Copyright © 2020 Bob. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        
        let nums: [Int] = [5,2,3,8,9,4,1]
        print(sortArray(nums))
    }
    
    
      func sortArray(_ nums: [Int]) -> [Int] {
            var nums = nums
           quickSort(a:&nums,low:0,high:nums.count - 1)
           return nums
        }

        func quickSort(a: inout [Int], low: Int, high: Int) {
        if low >= high { // 递归结束条件
            return
        }
        var i = low
        var j = high
        let key = a[i]
        while i < j {
            // 从右边开始比较，比key大的数位置不变
            while i < j && a[j] >= key {
                j -= 1
            }
            // 只要出现一个比key小的数，将这个数放入左边i的位置
            a[i] = a[j]
            // 从左边开始比较，比key小的数位置不变
            while i < j && a[i] <= key {
                i += 1
            }
            // 只要出现一个比key大的数，将这个数放入右边j的位置
            a[j] = a[i]
        }
        a[i] = key // 将key放入i的位置，则左侧数都比key小，右侧数都比key大
        quickSort(a: &a, low: low, high: i - 1) // 左递归
        quickSort(a: &a, low: i + 1, high: high) // 右递归
    }
        
    
    // MARK: 方法1
    func sortArray1(_ nums: [Int]) -> [Int] {
        
        let result = nums.sorted(by: <)
        
        return result;
    }

}


