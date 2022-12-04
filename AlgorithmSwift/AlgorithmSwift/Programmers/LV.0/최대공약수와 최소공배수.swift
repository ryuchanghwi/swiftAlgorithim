//
//  최대공약수와 최소공배수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/04.
//

import Foundation
/*
 0.최대공약수와 최소공배수
 */
func solution(_ n:Int, _ m:Int) -> [Int] {
    let biggestValue = [n, m].sorted()
    var commonDivisor = 1
    for i in 1...biggestValue[1] {
        if (n % i == 0) && (m % i == 0) {
            commonDivisor = i
        }
    }
    return [commonDivisor, n * m / commonDivisor]
}
