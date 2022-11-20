//
//  두 수의 나눗셈.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/21.
//

import Foundation
/*
 1.두 수의 나눗셈
 몫과 나머지를 더한 후, * 1000
 그 값을 Int로 씌워주면??
 
 안됌
 
 그러면 int를 Double값으로 변환하고 나누면?? 됌
 */
func solution(_ num1:Int, _ num2:Int) -> Int {
    let value = Double(num1) / Double(num2)
    return Int(value * 1000)
}
