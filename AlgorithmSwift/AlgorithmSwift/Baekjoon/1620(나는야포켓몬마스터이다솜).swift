//
//  1620(나는야포켓몬마스터이다솜).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 3/16/25.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let pocketmonCount: Int = input[0]
let quizCount: Int = input[1]

var pocketmonDictionary: [String: Int] = [:]
var intPocketmonDictionary: [Int: String] = [:]

for i in 0..<pocketmonCount {
    let name = String(readLine()!)
    pocketmonDictionary[name] = i + 1
    intPocketmonDictionary[i + 1] = name
}

for i in 0..<quizCount {
    let quiz = readLine()!
    if let count = Int(quiz) {
        // 숫자
       print(intPocketmonDictionary[count]!)
    } else {
        // 문자
        print(pocketmonDictionary[quiz]!)
    }
}
