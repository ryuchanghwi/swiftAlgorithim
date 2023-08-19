//
//  공 던지기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/19.
//

import Foundation

func solution(_ numbers:[Int], _ k:Int) -> Int {
    var rule = ((k - 1) * 2) % numbers.count
    return numbers[rule]
}
