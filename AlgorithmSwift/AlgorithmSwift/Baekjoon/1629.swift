//
//  1629.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/29.
//

import Foundation
/*
 수를 무한히 높여나가지 않고
 나머지에 a를 곱한 것을 다시 c로 나누는 것을 반복..?
 */

// 시간 초과...?
//let inputData = readLine()!.split(separator: " ").map { Int($0)! }
//
//let a = inputData[0]
//let b = inputData[1]
//let c = inputData[2]
//
//var currentA = a
//
//
//if b == 1 {
//    print(a % c)
//}
//else if b > 1 {
//    for _ in 2...b {
//        currentA = currentA * a % c
//    }
//    print(currentA)
//}




/*
 
 분할 정복 문제 - 2^16 은 (2^8)^2 그리고 ((2^4)^2)^2 ... 이런식
 이런 문제를 봤을 때 시간복잡도가 시간 초과가 나는 로직인지 어떻게 알쥐
 
 */


func multiple(_ a: Int, _ b: Int, _ c: Int) -> Int {
    if b == 1 {
        return a % c
    } else {
        let value = multiple(a, b / 2, c)
        if b % 2 == 0 {
            return (value * value) % c
        } else {
            return ((value * value) % c * a) % c
        }
    }
}

if let input = readLine() {
    let inputArray = input.split(separator: " ").map { Int($0)! }
    let A = inputArray[0]
    let B = inputArray[1]
    let C = inputArray[2]

    let result = multiple(A, B, C)
    print(result)
}

