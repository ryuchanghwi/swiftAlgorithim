//
//  x만큼 간격이 있는 n개의 숫자.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/17.
//

import Foundation
//func solution(_ x:Int, _ n:Int) -> [Int64] {
//    var result = [Int64]()
//    for i in 1...n {
//        result.append(Int64(i * x))
//    }
//    return result
//}

//고차함수로 한 풀이
func solution(_ x:Int, _ n:Int) -> [Int64] {
    return (1...n).map({ Int64($0 * x) })
}
