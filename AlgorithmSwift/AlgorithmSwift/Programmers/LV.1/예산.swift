//
//  예산.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/01/03.
//

import Foundation
//1. 예산
func solution(_ d:[Int], _ budget:Int) -> Int {
    let sortedD = d.sorted()
    var budgetValue = budget
    var result = 0
    for i in 0..<sortedD.count {
        if budgetValue < sortedD[i] {
            break
        }
        else {
            budgetValue -= sortedD[i]
            result += 1
        }
    }
    return result
}
