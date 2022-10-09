//
//  가장 큰 수 찾기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/09.
//

import Foundation

func solution(_ array:[Int]) -> [Int] {
    var arrayCount = array.count
    var sortedArray = array.sorted()
    var biggestNumber = sortedArray[arrayCount - 1]
    var biggestIndex = 0
    for i in array {
        if biggestNumber == i {
            break
        }
        biggestIndex += 1
    }
    return [biggestNumber, biggestIndex]
}
