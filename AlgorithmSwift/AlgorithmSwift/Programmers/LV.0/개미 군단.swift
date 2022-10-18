//
//  개미 군단.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/19.
//

import Foundation
/*
 "그리디 알고리즘"
 공격력은 각각 5, 3, 1
 최소한의 병력을 요구함으로 5 -> 3 -> 1 순으로 진행한다.
 반복문을 통해 주어진 인자를 계속해서 줄여나간다.
 인자가 줄었다면 result는 1을 더해준다.
 */
func solution(_ hp:Int) -> Int {
    var hpValue = hp
    var result = 0
    while true {
        if hpValue == 0 {
            break
        }
        if hpValue >= 5 {
            hpValue -= 5
            result += 1
        }
        else if hpValue >= 3 {
            hpValue -= 3
            result += 1
        }
        else if hpValue >= 1 {
            hpValue -= 1
            result += 1
        }
    }
    return result
}
