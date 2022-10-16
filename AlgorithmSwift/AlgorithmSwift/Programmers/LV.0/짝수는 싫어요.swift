//
//  짝수는 싫어요.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/16.
//

import Foundation
//func solution(_ n:Int) -> [Int] {
//    var intArray = [Int]()
//    for i in 1...n {
//        intArray.append(i)
//    }
//    return intArray.filter { value in
//        value % 2 == 1
//    }
//}


//다른사람 풀이
func solution(_ n:Int) -> [Int] {
    return (1...n).filter { value in
        value % 2 == 1
    }
}
