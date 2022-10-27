//
//  약수의 합.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/24.
//

import Foundation
/*
 약수의 합
    조건에 n이 0인 경우를 생각해야함
 */
func solution(_ n:Int) -> Int {
    return (1...n).filter { value in
        n % value == 0
    }.reduce(0, +)
}
