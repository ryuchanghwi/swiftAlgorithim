//
//  중앙값 구하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/14.
//

import Foundation
func solution(_ array:[Int]) -> Int {
    let arrayCount = array.count
    let sortedArray = array.sorted()
    let result = sortedArray[arrayCount / 2]
    return result
}
