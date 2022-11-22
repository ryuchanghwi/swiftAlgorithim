//
//  핸드폰 번호 가리기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/22.
//

import Foundation
/*
 1.핸드폰 번호 가리기
 */
func solution(_ phone_number:String) -> String {
    var result = phone_number.map { value in
        String(value)
    }
    let numberCount = phone_number.count
    for i in 0..<numberCount - 4 {
        result[i] = "*"
    }
    return result.reduce("", +)
}
//다른 사람 풀이
//func solution(_ phone_number:String) -> String {
//    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
//}
