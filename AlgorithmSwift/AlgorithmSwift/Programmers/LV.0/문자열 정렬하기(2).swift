//
//  문자열 정렬하기(2).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/24.
//

import Foundation
/*
문자열 정렬하기(2)
 */
//func solution(_ my_string:String) -> String {
//    let alphabet = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
//    let myStringArray = my_string.map { value in
//        String(value).lowercased()
//    }
//    var resultArray = [String]()
//    for i in alphabet {
//        for j in myStringArray {
//            if i == j {
//                resultArray.append(i)
//            }
//        }
//    }
//
//    return resultArray.reduce("", +)
//}

//다른 풀이
//func solution(_ my_string:String) -> String {
//    return my_string.map { value in
//        value.lowercased()
//    }.sorted().reduce("", +)
//}
