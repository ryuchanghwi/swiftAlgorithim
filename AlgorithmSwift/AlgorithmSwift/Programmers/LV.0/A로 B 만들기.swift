//
//  A로 B 만들기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/07.
//

import Foundation
/*
 A로 B 만들기
 */
//func solution(_ before:String, _ after:String) -> Int {
//    let beforeArray = before.map { value in
//        String(value)
//    }.sorted()
//    let afterArray = after.map { value in
//        String(value)
//    }.sorted()
//    return beforeArray == afterArray ? 1 : 0
//}
func solution(_ before:String, _ after:String) -> Int {
    return before.sorted() == after.sorted() ? 1 : 0
}
