//
//  4375.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/29.
//

import Foundation

/*
 1
 11
 111
 .... 하나씩 늘리면서 나눠질때까지..
 */


 // 1트
//while let n = readLine() {
//    var compareNum = "1"
//    while true { // while문이 돌아가는 조건
//        if Int(compareNum)! % Int(n)! == 0 {
//            print("\(compareNum.count)")
//            break
//        }
//        else {
//            compareNum += "1"
//        }
//    }
//}

while let n = readLine() {
    var result = 0
    var compareNum = 1

    while true {
        result += 1
        if compareNum % Int(n)! == 0 {
            print(result)
            break
        }
        else {
            compareNum = compareNum * 10 + 1
            compareNum %= Int(n)! // n으로 나눴을 때 나머지를 다시 할당해서 수가 커지는 것을 막는다.
        }
    }
}
