//
//  문자열 밀기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/01/07.
//

import Foundation
//0 문자열 밀기
func solution(_ A:String, _ B:String) -> Int {
    var aValue = Array(A)
    let bValue = Array(B)
    let aCount = aValue.count
    var result = 0
    for _ in 1...aValue.count {
        if aValue == bValue {
            break
        }
        else {
            aValue.insert(aValue[aCount - 1], at: 0)
            aValue.remove(at: aCount)
            result += 1
        }
    }
    if result == aValue.count {
        result = -1
    }
    return result
}
//func solution(_ A:String, _ B:String) -> Int {
//    let arr = (A+A).components(separatedBy: B)
//    return arr.count == 1 ? -1 : arr[1].count
//}
