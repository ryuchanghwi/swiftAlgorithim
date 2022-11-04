//
//  7의 개수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/04.
//

import Foundation
func solution(_ array:[Int]) -> Int {
    var result = 0
    array.map { value in
        for i in String(value) {
            if i == "7" {
                result += 1
            }
        }
    }
    return result
}
