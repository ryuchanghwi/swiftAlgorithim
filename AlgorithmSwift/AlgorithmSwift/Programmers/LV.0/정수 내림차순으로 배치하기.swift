//
//  정수 내림차순으로 배치하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/17.
//

import Foundation

/*
 정수 내림차순으로 배치하기
 */
func solution(_ n:Int64) -> Int64 {
    var result = ""
    let nArray = String(n).map { value in
        String(value)
    }.map { value in
        Int(value)!
    }.sorted(by: >)

    for i in nArray {
        result += String(i)
    }
    return Int64(result)!
}

//다른 사람 풀이
//func solution(_ n:Int64) -> Int64 {
//    return Int64(String(Array(String(n)).sorted { $0 > $1 }))!
//}




