//
//  구슬을 나누는 경우의 수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/19.
//

import Foundation
// 재귀 함수
func factorial(_ n: Int) -> Double {
    if n <= 1 {
        return 1
    }
    else {
        return Double(n) * Double(factorial(n - 1))
    }
}

func solution(_ balls:Int, _ share:Int) -> Int {
    var result = factorial(balls) / (factorial(balls - share) * factorial(share))
    return Int(round(result)) //round : 반올림
}
