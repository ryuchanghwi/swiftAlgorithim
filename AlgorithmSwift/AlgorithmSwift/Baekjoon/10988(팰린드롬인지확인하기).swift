//
//  10988(팰린드롬인지확인하기).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 3/13/25.
//

import Foundation
var word = readLine()!.map { String($0) }
if word.count % 2 == 1 {
    word.remove(at: word.count / 2)
}

var stackArray: [String] = []

for i in 0..<(word.count / 2) {
    stackArray.append(word[i])
}


for i in (word.count / 2)..<word.count {
    if word[i] == stackArray.last! {
        stackArray.removeLast()
    }
}

print(stackArray.isEmpty ? 1 : 0)
