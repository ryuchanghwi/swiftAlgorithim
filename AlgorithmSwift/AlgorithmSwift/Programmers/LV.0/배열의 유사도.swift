//
//  배열의 유사도.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/16.
//

import Foundation
//func solution(_ s1:[String], _ s2:[String]) -> Int {
//    var result = 0
//    for i in s1 {
//        for j in s2 {
//            if i == j {
//                result += 1
//            }
//        }
//    }
//    return result
//}
//다른 사람의 풀이
func solution(_ s1:[String], _ s2:[String]) -> Int {
    return s1.filter { value in
        s2.contains(value)
    }.count
}
