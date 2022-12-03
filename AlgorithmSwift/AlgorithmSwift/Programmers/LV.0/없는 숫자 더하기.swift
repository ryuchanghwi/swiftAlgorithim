//
//  없는 숫자 더하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/03.
//

import Foundation
/*
 없는 숫자 더하기
 */

func solution(_ numbers:[Int]) -> Int {
    return (0...9).reduce(0, +) - numbers.reduce(0, +)
}
