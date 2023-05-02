//
//  n간격의 원소들.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/05/01.
//

import Foundation
func solution(_ num_list:[Int], _ n:Int) -> [Int] {
    var result : [Int] = []
    for i in 0..<num_list.count {
        if i % n == 0 {
            result.append(num_list[i])
        }
    }
    
    return result
}
/*
//다른 사람 풀이
 import Foundation

 func solution(_ num_list:[Int], _ n:Int) -> [Int] {
     var result = [Int]()
     for (i, num) in num_list.enumerated() {
         if i % n == 0 { result.append(num) }
     }
     return result
 }
 */
