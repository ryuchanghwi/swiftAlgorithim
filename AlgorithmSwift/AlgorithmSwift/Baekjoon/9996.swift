//
//  9996.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/25.
//

import Foundation

//let inputCount = Int(readLine()!)!
//let pattern = readLine()!
//
//let firstWord = String(pattern.prefix(1))
//let lastWord = String(pattern.suffix(1))
//var result: [String] = []
//for _ in 0..<inputCount {
//    let inputWord = readLine()!
//    if firstWord.count + lastWord.count > inputWord.count{
//        result.append("NE")
//    }
//    else if String(inputWord.prefix(1)) == firstWord && String(inputWord.suffix(1)) == lastWord {
//        result.append("DA")
//    }
//    else {
//        result.append("NE")
//    }
//}
//for i in result {
//    print(i)
//}


let inputCount = Int(readLine()!)!
let pattern = readLine()!

let firstWord = String(pattern.split(separator: "*")[0])
let lastWord = String(pattern.split(separator: "*")[1])

var result: [String] = []
for _ in 0..<inputCount {
    let inputWord = readLine()!
    if firstWord.count + lastWord.count > inputWord.count{
        result.append("NE")
    }
    else if inputWord.hasPrefix(firstWord) && inputWord.hasSuffix(lastWord) {
        result.append("DA")
    }
    else {
        result.append("NE")
    }
}
for i in result {
    print(i)
}
