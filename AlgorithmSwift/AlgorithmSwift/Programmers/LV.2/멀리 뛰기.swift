//
//  멀리 뛰기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/10/16.
//

import Foundation

func solution(_ n:Int) -> Int {
    var result = 0
    var pArray = [0, 1, 2]
    if n < 3 {
        result = pArray[n]
    }
    else {
        for i in 3...n {
             pArray.append((pArray[i - 1] + pArray[i - 2]) % 1234567)
        }
        result = pArray[n]
    }
    return result
}
