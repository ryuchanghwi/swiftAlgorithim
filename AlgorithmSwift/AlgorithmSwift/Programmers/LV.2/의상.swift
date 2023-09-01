//
//  의상.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/01.
//

import Foundation

func solution(_ clothes:[[String]]) -> Int {
    var clothesDic : [String: Int] = [:]
    
    for c in clothes {
        if clothesDic.keys.contains(c[1]) {
            clothesDic[c[1]]! += 1
        }
        else {
            clothesDic[c[1]] = 1
        }
    }
    var resultCaseArr = [Int]()
    
    for (key, value) in clothesDic {
        resultCaseArr.append(value + 1)
    }
    return resultCaseArr.reduce(1, *) - 1
}
