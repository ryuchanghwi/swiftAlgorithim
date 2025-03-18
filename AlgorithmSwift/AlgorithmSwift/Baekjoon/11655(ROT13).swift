//
//  11655(ORT13).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 3/14/25.
//

import Foundation

let alphabet = String("abcdefghijklmnopqrstuvwxyz").map { String($0) }
let Alphabet = String("ABCDEFGHIJKLMNOPQRSTUVWXYZ").map { String($0) }

let sentenceArray = String(readLine()!).map { String($0) }
var result = ""

// x + 13 <= 26 -> x + 13
// x + 13 > 26 -> | x + 13 - 26 |

for i in 0..<sentenceArray.count {
    var isReplaced: Bool = false
    for j in 0..<alphabet.count {
        if alphabet[j] == sentenceArray[i] {
            let index = (j + 13) % 26
            result += alphabet[index]
            isReplaced = true
            break
        }
        if Alphabet[j] == sentenceArray[i] {
            let index = (j + 13) % 26
            result += Alphabet[index]
            isReplaced = true
            break
        }
    }
    if isReplaced == false {
        result += sentenceArray[i]

    }
}

print(result)
