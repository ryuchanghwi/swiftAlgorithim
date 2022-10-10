//
//  짝수와 홀수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/10.
//

import Foundation
//num에 들어가는 인자를 받아서 2로 나눈 나머지가 0이면 짝수 아니면 홀수
func solution(_ num:Int) -> String {
    let numValue = num % 2
    print(numValue)
    let result = numValue == 0 ? "Even" : "Odd"
    return result
}
