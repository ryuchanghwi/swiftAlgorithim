//
//  문자열 다루기 기본.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/20.
//

import Foundation
/*
 1.문자열 다루기 기본

 */

func solution(_ s:String) -> Bool {
    let numArray = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
    let resultCount = s.filter { value in
        numArray.contains(String(value))
    }.count
    return s.count == resultCount && (resultCount == 4 || resultCount == 6) ? true : false
}

func solution(_ s:String) -> Bool {
    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
}
