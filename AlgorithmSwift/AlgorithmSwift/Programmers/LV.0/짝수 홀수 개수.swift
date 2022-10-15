//
//  짝수 홀수 개수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/14.
//

import Foundation
//나의 풀이
func solution(_ num_list:[Int]) -> [Int] {
    var evenCount = 0
    var oddCount = 0
    for i in num_list {
        if i % 2 == 0 {
            evenCount += 1
        } else {
            oddCount += 1
        }
    }
    return [evenCount, oddCount]
}

//다른 사람 풀이
//func solution(_ num_list: [Int]) -> [Int] {
//    return [num_list.filter({ $0 % 2 == 0}).count, num_list.filter({$0 % 2 == 1}).count]
//}
