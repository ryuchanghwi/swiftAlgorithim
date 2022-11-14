//
//  자연수 뒤집어 배열로 만들기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/13.
//

import Foundation
/*
 자연수 뒤집어 배열로 만들기
 compactMap..? 공부하기
 */
//func solution(_ n:Int64) -> [Int] {
//    return String(n).map { value in
//        String(value)
//    }.map { value in
//        Int(value)!
//    }.reversed()
//}
//func solution(_ n:Int64) -> [Int] {
//    return String(n).compactMap { value in
//       Int(String(value))
//    }.reversed()
//}
func solution(_ n:Int64) -> [Int] {
    return String(n).map { value in
        Int(String(value))!
    }.reversed()
}
