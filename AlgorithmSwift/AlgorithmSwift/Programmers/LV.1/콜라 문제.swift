//
//  콜라 문제.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/25.
//

import Foundation

/*
1) 몫이 반환되는 메서드
2) 나머지가 반환되는 메서드
*/
func returnValue(_ nValue: Int, _ aValue: Int, _ bValue: Int) -> Int {
    return nValue / aValue * bValue
}
func returnRest(_ nValue: Int, _ aValue: Int) -> Int {
    return nValue % aValue
}

func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var rest = n
    var result = 0
    
    while rest >= a {
        result += returnValue(rest, a, b)
        rest = returnValue(rest, a, b) + returnRest(rest, a)
        
    }
    return result
}
