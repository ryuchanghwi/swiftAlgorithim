//
//  문자열 바꿔 찾기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/20.
//

import Foundation
func solution(_ myString:String, _ pat:String) -> Int {
    
    let result = myString.map { value -> String in
        if value == "A" {
            return "B"
        }
        else if value == "B" {
            return "A"
        }
        else {
            return String(value)
        }
    }.reduce("", +)
    .contains(pat)
    return result ? 1 : 0
}

//func solution(_ myString:String, _ pat:String) -> Int {
//    myString.map{ $0 == "A" ? "B" : "A"}.joined().contains(pat) ? 1 : 0
//}
