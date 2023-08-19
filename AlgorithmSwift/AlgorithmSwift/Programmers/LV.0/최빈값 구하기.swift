//
//  최빈값 구하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/18.
//

import Foundation
func solution(_ array:[Int]) -> Int {
    
    var dic = [Int: Int]()
    var result = 0
    var maxCount = 0
    
    for i in array {
        
        // 값이 있는 경우
        if dic.keys.contains(i) {
            var value = dic[i]!
            print(value, "??")
            dic.updateValue(value + 1, forKey: i)
        }
        else {
            // 값이 없는 경우
           dic[i] = 1
        }
        
    }
    
    for (key, value) in dic {
        if value == dic.values.max() {
            maxCount += 1
            result = key
        }
    }
    
    return maxCount == 1 ? result : -1
}
