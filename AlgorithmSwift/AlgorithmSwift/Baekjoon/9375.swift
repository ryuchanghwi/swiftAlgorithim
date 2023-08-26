//
//  9375.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/26.
//

import Foundation

let testCase = Int(readLine()!)!


for _ in 0..<testCase {
    var dic: [String: Int] = [:]
    let count = Int(readLine()!)!
    
    for _ in 0..<count {
        let clothesCategory = readLine()!.split(separator: " ")
        let clothes = String(clothesCategory[0])
        let categoryValue = String(clothesCategory[1])

        if dic.keys.contains(categoryValue) {
            dic[categoryValue]! += 1
        }
        else {
            dic[categoryValue] = 1
        }
    }
    let result = dic.values.map({ ($0 + 1) }).reduce(1, *)
    print(result - 1)
}
