//
//  푸드 파이터 대회.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/05/03.
//

import Foundation

func solution(_ food:[Int]) -> String {
    var foodQuantity : [Int] = []
    for i in 1..<food.count {
        foodQuantity.append(food[i] / 2)
    }

    var foodQuantityArray : [Int] = []
    for (i, x) in foodQuantity.enumerated() {

        for i in repeatElement(i+1, count: x) {
            foodQuantityArray.append(i)
        }
    }

    var reverseFoodQuantityArray = foodQuantityArray.reversed()

    var resultArray = [Int]()
    resultArray = foodQuantityArray
    resultArray += [0]
    resultArray += reverseFoodQuantityArray

    return resultArray.map { String($0) }.joined()
}
