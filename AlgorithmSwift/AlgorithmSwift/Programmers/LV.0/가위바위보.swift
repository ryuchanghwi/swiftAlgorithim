//
//  가위바위보.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/29.
//

import Foundation
/*
 가위바위보
 어떻게 문자를 바꿀것인지 구현에 대한 문제
 */
//
//func solution(_ rsp:String) -> String {
//    var result = ""
//    for i in Array(rsp) {
//        if i == "2" {
//            result += "0"
//        }
//        else if i == "0" {
//            result += "5"
//        }
//        else {
//            result += "2"
//        }
//    }
//    return result
//}

//고차함수 풀이

func solution(_ rsp:String) -> String {
    return rsp.map { value in
        value == "0" ? "5" : value == "2" ? "0" : "2"
    }.reduce("", +)
}
