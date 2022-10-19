//
//  팩토리얼.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/20.
//

//while을 통해 결과값이 n을 넘어가는 순간 멈추게 하는 방법으로..?
//팩토리얼
/*
 4! = 4*3*2*1
 3! = 3*2*1
 2! = 2*1
 1! = 1*1
 */
import Foundation
func solution(_ n:Int) -> Int {
    var factorialResult = 1
    var result = 1
    while true {
                result += 1
        factorialResult = factorialResult * result
        if n < factorialResult {
            break
        }
    }
    return result - 1
}
