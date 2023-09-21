//
//  16637.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/14.
//

import Foundation

let N = Int(readLine()!)!

let inputMath = readLine()!.map { String($0) }

var numberQueue = [String]() // 숫자
var fourCalcQueue = [String]() // 사칙 연산

for i in 0..<N {
    if let num = Int(inputMath[i]) {
        numberQueue.append(inputMath[i])
    }
    else {
        fourCalcQueue.append(inputMath[i])
    }
}
numberQueue = numberQueue.reversed()
fourCalcQueue = fourCalcQueue.reversed()

print(numberQueue, "숫자")
print(fourCalcQueue, "사칙연산")

/*
 숫자 큐에서 최대 큐 갯수부터 1개수 만큼 뺸다.
 그리고 나머지에서도..
 반복..
 */

var resultHistory = [Int]()

var calcCase = [[String]]()

func pickN(n: Int, queue: [Int]) {
    if
}

for i in 1...numberQueue.count {
    while !numberQueue.isEmpty {
        
    }
}



//func pickN(n: Int) {
//    var tempArr = [String]()
//    for _ in 1...n {
//        let num = numberQueue.removeLast()
//        tempArr.append(num)
//        print(num)
//    }
//    calcCase.append(tempArr)
//}
//
//for i in 1...numberQueue.count {
//    var tempNumberQueue = numberQueue
//    while !tempNumberQueue.isEmpty {
//        pickN(n: i)
//    }
//}
//print(calcCase)
