//
//  문자열 내림차순으로 배치하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/26.
//

import Foundation


func solution(_ s:String) -> String {
    var lowerString: String = ""
    var upperString: String = ""
    var sArray = s.map { $0 }
    for i in sArray {
        print(i)
        if i.isLowercase {
            lowerString += String(i)
        }
        else {
            upperString += String(i)
        }
    }
    return String(lowerString.sorted(by: >)) + String(upperString.sorted(by: >))
}
