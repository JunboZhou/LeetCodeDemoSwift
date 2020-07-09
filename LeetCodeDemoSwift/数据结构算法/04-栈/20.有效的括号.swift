//
//  20.有效的括号.swift
//  LeetCodeDemoSwift
//
//  Created by Bob on 2020/7/9.
//  Copyright © 2020 Bob. All rights reserved.
//

/**
* 20. 有效的括号
* https://leetcode-cn.com/problems/valid-parentheses/
*/
import UIKit
class Test20: UIViewController {
    override func viewDidLoad() {
        super.viewDidLoad();
        
    }
    
    /***
     * 思路:
     * 遇见左字符,就入栈, 遇到右字符
     * 如果栈为空, 即没有相应的左字符与之对应, 就说明括号无效
     * 如果栈不为空, 将栈顶字符出栈与之匹配
     * 如果匹配成功, 继续扫描下一个字符
     * 如果匹配不成功, 说明括号无效
     * 直到所有字符扫描完毕
     * 栈不为空, 括号有效
     * 栈为空, 括号无效
     */
    
    func isValid(_ s: String) -> Bool {
        
        var map:[Character: Character] = Dictionary()
        map["("] = ")"
        map["{"] = "}"
        map["["] = "]"
        
        var stask = [Character]()
        for char in s {
            //左字符
            if map.keys.contains(char) {
                stask.append(char)
            } else { // 右字符
                if stask.isEmpty {
                    return false
                }
                
                if char != map[stask.popLast()!] {
                    return false
                }
            }
        }
        return stask.isEmpty
    }

}
