//
//  1159.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/24.
//

import Foundation

for _ in 0..<Int(readLine()!)! {
    let name = readLine()!
    if nameDic.keys.contains(String(name.prefix(1))) {
        nameDic[String(name.prefix(1))]! += 1
    }
    else {
        nameDic[String(name.prefix(1))] = 1
    }
    
}
var rule = nameDic.filter {
    $0.value >= 5
}.keys.sorted()
var result = rule.reduce("", +)

print(result == "" ? "PREDAJA" : result)
