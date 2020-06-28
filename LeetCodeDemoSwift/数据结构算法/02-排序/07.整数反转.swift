//
//  07.整数反转.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/6/28.
//  Copyright © 2020 Bob. All rights reserved.
//
/**
* https://leetcode-cn.com/problems/reverse-integer/
*/

import UIKit
class Test007: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        print("结果是\(reverse(1534236469))")
    }
    
    /***
     *  思路
     *  1234
     *  第一步  0 * 10 + 4 = 4
     *  第二步  4 * 10 + 3 = 43
     *  第三步  43 * 10 + 2 = 432
     *  第四步  432 * 10 + 1 = 4321
     */
    
    func reverse(_ x: Int) -> Int {
        var value: Int = x
        var result: Int = 0
        while value != 0 {
            let temp = value % 10
            let newResult = result * 10 + temp
            // 判断是否越界
            if newResult > Int32.max || newResult < Int32.min {
                return 0
            }
            result = newResult;
            value = value / 10;
        }
        return result;
    }
}
