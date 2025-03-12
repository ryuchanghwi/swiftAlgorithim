//
//  10808(알파벳개수).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 3/13/25.
//

import Foundation

let inputWord = readLine()!

let splitWord = inputWord.map { String($0) }

var output: [Int] = []

for _ in 0..<26 {
    output.append(0)
}


let alphabetArray: [String] = ["a", "b", "c", "d", "e", "f", "g", "h", "i", "j", "k", "l", "m", "n", "o", "p", "q", "r", "s", "t", "u", "v", "w", "x", "y", "z"]
for i in 0..<26 {
    var count = 0
    for j in splitWord {
        if alphabetArray[i] == j {
            count += 1
        }
    }
    output[i] = count
}

print(output.map { String($0) }.joined(separator: " "))
