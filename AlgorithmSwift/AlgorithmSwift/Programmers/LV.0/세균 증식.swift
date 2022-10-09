//
//  세균 증식.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/09.
//

import Foundation
// 세균이 늘어나는 방식은 2 ^ t
// 거듭제곱에 쓰이는 method는 pow
// pow의 타입은 int는 안되지만 double타입은 되므로
// double -> int로 바꿈으로 해결
func solution(_ n:Int, _ t:Int) -> Int {
    let doubleT = Double(t)
    let multiplication = Int(pow(2, doubleT))
    let result = n * multiplication
    return result
}
