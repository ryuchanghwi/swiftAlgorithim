//
//  정수 제곱근 판별.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/13.
//

import Foundation
/*
 정수 제곱근 판별
 제곱근을 판별하는 과정에서 bool 값을 추가해 제곱근이 맞는지 아닌지를 확인하는 과정을 넣었음
 */
func solution(_ n:Int64) -> Int64 {
    var result = 0
    //제곱근이 맞는지 아닌지 확인하는 변수
    var check = false
    for i in 1...n {
        if i * i == n {
            check = true
            result = Int(i)
            break
        }
        else {
            check = false
        }
        
    }
    print(result)
    return Int64(check ? (result + 1) * (result + 1) : -1)
}
