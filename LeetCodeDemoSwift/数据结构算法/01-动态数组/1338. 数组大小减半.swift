//
//  1338. 数组大小减半.swift
//  LeetCodeDemo
//
//  Created by Bob on 2020/6/12.
//  Copyright © 2020 Bob. All rights reserved.
//

import UIKit
class Test1338: UIViewController {
    
    override func viewDidLoad() {
        let array = [3,3,3,3,5,5,5,2,2,7]
        let res = minSetSize(array)
        print(res)
    }
    
    func minSetSize(_ arr: [Int]) -> Int {
       var map:[Int:Int] = [:]
       for value in arr {
           map[value, default: 0] += 1
       }
       var max = 0
       var count = 0
       let numsMax = arr.count
   
        for value in map.values.sorted(by: >)  {
           count += 1
           max += value
          if max  * 2 >= numsMax {
               break
           }
       }
       return count
    }
}
