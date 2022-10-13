//
//  배열의 평균값.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/12.
//

import Foundation
func solution(_ numbers:[Int]) -> Double {
    let numbersCount = numbers.count
    let doubleNumbers = numbers.map({ value in
        return Double(value)
    })
    let plusArray = doubleNumbers.reduce(0, { x, y in
        (x + y)
    })
    let result = plusArray / Double(numbersCount)
    
    return result
}
