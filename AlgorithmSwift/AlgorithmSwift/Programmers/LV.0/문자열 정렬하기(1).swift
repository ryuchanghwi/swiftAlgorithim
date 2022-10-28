//
//  문자열 정렬하기(1).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/28.
//

import Foundation
/*
 2가지 풀이
 */
//func solution(_ my_string:String) -> [Int] {
//    let number : [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
//    var result = [Int]()
//    my_string.map { value in
//        if number.contains(String(value)) {
//            result.append(Int(String(value))!)
//        }
//    }
//    return result.sorted()
//}

func solution(_ my_string:String) -> [Int] {
    let number : [String] = ["1", "2", "3", "4", "5", "6", "7", "8", "9", "0"]
    
    return my_string.map { value in
        String(value)
    }.filter { value in
        number.contains(value)
    }.map { value in
        Int(value)!
    }.sorted()
}
