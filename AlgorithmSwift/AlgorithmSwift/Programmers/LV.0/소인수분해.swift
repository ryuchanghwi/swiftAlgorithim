//
//  소인수분해.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/10.
//

import Foundation
/*
 0.소인수분해
 */

func solution(_ n:Int) -> [Int] {
    var numberValue = n
    var value = 1 //n과 같은 수를 만들기 위한 값
    var result = [Int]()
    while true {
        if value == n {
            break
        }
        for i in 2...n {
            print(numberValue)
            if numberValue % i == 0 {
                value = value * i
                numberValue = numberValue / i

                if !result.contains(i) {
                    result.append(i)
                }
            }
        }
    }
    return result
}
