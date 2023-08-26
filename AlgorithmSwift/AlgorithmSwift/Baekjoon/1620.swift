//
//  1620.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/26.
//

import Foundation


let inputData = readLine()!.split(separator: " ").map { Int($0)! }

let pocketmonCount = inputData[0]
let quizCount = inputData[1]

var pocketmonDic: [String: Int] = [:]
var pocketmonNumDic: [Int: String] = [:]

for i in 0..<pocketmonCount {
    let name = readLine()!
    pocketmonDic[name] = (i + 1)
    pocketmonNumDic[i + 1] = name
}

var result: [String] = []

for _ in 0..<quizCount {
    let quiz = readLine()!
    
    if let quiz = Int(quiz) {
        result.append(pocketmonNumDic[quiz]!)
    }
    else {
        result.append(String(pocketmonDic[quiz]!))
    }
}

for i in result {
    print(i)
}
