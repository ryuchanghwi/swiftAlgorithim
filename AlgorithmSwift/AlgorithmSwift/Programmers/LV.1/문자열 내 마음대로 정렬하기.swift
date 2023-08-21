//
//  문자열 내 마음대로 정렬하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/22.
//

import Foundation

func solution(_ strings:[String], _ n:Int) -> [String] {
    let alphabets = "abcdefghijklmnopqrktuvwxyz".map { $0 }
    let stringsValue = strings.map { $0.map { $0 }}
    var result = [String]()

    for alphabet in alphabets {
        var compareArray = [String]()
        for i in 0..<stringsValue.count {
            if alphabet == stringsValue[i][n] {
                var word = String(stringsValue[i])
                compareArray.append(word)
                compareArray = compareArray.sorted()
            }
        }
              result += compareArray
    }
    return result
}
