//
//  한 번만 등장한 문자.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/04.
//

import Foundation

/*
 0.한 번만 등장한 문자
 
 //두 개의 빈 배열에 각각 추가를 한다.
 하나는 전체배열, 하나는 겹치는지 확인하는 배열
 a / a
 a b / a b
 a b c / a b c
 a b c a / b c
 a b c a b / c
 a b c a b c / ""
 a b c a b c
 */
func solution(_ s:String) -> String {
    var sArray = s.map( { String($0)} ).sorted()
    let count = s.count
    var compareArray = [String]()
    
    for i in 0..<count {
        for j in (i + 1)..<count {
            if sArray[i] == sArray[j] {
                compareArray.append(sArray[i])
            }
        }
    }
    for i in compareArray {
        if sArray.contains(i) {
            sArray.removeAll { value in
                return value == i
            }
        }
    }
    
    return sArray.reduce("", +)
}
