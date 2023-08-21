//
//  대소문자 바꿔서 출력하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/20.
//

import Foundation

func solution(_ myString:String, _ pat:String) -> Int {
    
    let myStringValue = myString.map { value in
        if value == "A" {
            return "B"
        }
        else if value == "B" {
            return "A"
        }
        else {
            return String(value)
        }
    }
    print(myStringValue)
    return 0
}

solution("ABBAA", "AABB")
