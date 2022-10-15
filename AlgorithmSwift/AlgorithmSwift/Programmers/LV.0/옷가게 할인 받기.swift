//
//  옷가게 할인 받기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/16.
//

import Foundation

func solution(_ price:Int) -> Int {
    let doublePrice = Double(price)
    var result = 0
    switch price {
    case 100000...299999:
        result = Int(doublePrice - 0.05 * doublePrice)
    case 300000...499999:
        result = Int(doublePrice - 0.10 * doublePrice)
    case 500000...:
        result = Int(doublePrice - 0.20 * doublePrice)
    default:
        result = price
    }
    return result
}
