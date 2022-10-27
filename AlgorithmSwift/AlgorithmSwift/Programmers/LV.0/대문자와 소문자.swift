//
//  대문자와 소문자.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/25.
//

import Foundation
//func solution(_ my_string:String) -> String {
//    var myStringValue = my_string.map { value in
//        String(value)
//    }
//    var resultString = ""
//    let alphabet = [("a","A"), ("b", "B"), ("c", "C"), ("d", "D"), ("e", "E"), ("f", "F"), ("g", "G"), ("h", "H"), ("i", "I"), ("j", "J"), ("k", "K"), ("l", "L"), ("m", "M"), ("n", "N"), ("o", "O"), ("p", "P"), ("q", "Q"), ("r", "R"), ("s", "S"), ("t", "T"), ("u", "U"), ("v", "V"), ("w", "W"), ("x", "X"), ("y", "Y"), ("z", "Z")]
//    for i in alphabet {
//        for j in myStringValue {
//            if i.0 == String(j) {
//                resultString += i.1
//            }
//            else if i.1 == String(j) {
//                resultString += i.0
//            }
//        }
//    }
//    return resultString
//}
func solution(_ my_string:String) -> String {
    //String타입의 배열로 바꿔주기
    return my_string.map { value in
        String(value)
        //String 배열 중 값이 대문자면 소문자로 아니면 소문자로
    }.map { value in
        value == value.uppercased() ? value.lowercased() : value.uppercased()
        //배열을 문자열로 합치기
    }.reduce("", +)
}
