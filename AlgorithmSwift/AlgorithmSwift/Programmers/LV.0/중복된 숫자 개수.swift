//
//  중복된 숫자 개수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/12.
//

import Foundation
//func solution(_ array:[Int], _ n:Int) -> Int {
//    var result = 0
//    for i in array {
//        if i == n {
//            result += 1
//        }
//    }
//    return result
//}
func solution(_ array:[Int], _ n:Int) -> Int {
    var result = array.filter { value in
        value == 1
    }.count
    return result
}
