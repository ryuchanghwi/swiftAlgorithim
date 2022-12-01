//
//  최댓값과 최솟값.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/01.
//

import Foundation
/*
 2.최댓값과 최솟값
 */
func solution(_ s:String) -> String {
    let minValue = s.components(separatedBy: " ").map { value in
        Int(value)!
    }.min()!
    let maxValue = s.components(separatedBy: " ").map { value in
        Int(value)!
    }.max()!
    return "\(minValue) \(maxValue)"
}
