//
//  하샤드 수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/12.
//

import Foundation
//x의 각 자리에 쉽게 접근하기 위해서 String 타입으로 변환
//문자열 타입의 x 배열을 순회하며 각 자리 수를 sumInt에 추가함
func solution(_ x:Int) -> Bool {
    let stringX = String(x)
    var sumInt = 0
    for i in stringX {
        sumInt += Int(String(i))!
    }
    let result : Bool = x % sumInt == 0 ? true : false
    return result
}
