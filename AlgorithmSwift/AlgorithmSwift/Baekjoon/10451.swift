//
//  10451.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/18.
//

import Foundation

//let T = Int(readLine()!)!
//
//for _ in 0..<T {
//
//    let inputN = Int(readLine()!)!
//    var inputArray: [Int] = readLine()!.split(separator: " ").map({ Int($0)! })
//    inputArray.insert(0, at: 0)
//
//    var checkArray: [Bool] = Array(repeating: false, count: inputN + 1)
//
//    func dfs(node: Int) {
//        checkArray[node] = true
//        let nextNode = inputArray[node]
//
//        if checkArray[nextNode] == false {
//            dfs(node: nextNode)
//        }
//    }
//    var result = 0
//    for i in 1...inputN {
//
//        if checkArray[i] == false {
//            dfs(node: i)
//            result += 1
//        }
//    }
//
//    print(result)
//}
