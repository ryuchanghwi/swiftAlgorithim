//
//  main.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/08.
//

import Foundation


/*
 3가지 조건
 1. 모음을 반드시 하나 포함해야 함
 2. 모음이 3개 혹은 자음이 3개 연속으로 오면 안된다.
 3. 갈은 글자가 연속으로 2번오면 안된다. but ee, oo는 혀용
 */


var word = String(readLine()!)


var vowels: [String] = ["a", "e", "i", "o", "u"]

func vowelsCheck(wordArr: [String]) -> Bool {
    var result = 0
    for i in vowels {
        let count = wordArr.filter { i == $0 }.count
        if count >= 1 {
            result += 1
        }
    }
    return result == 0 ? false : true
}

func vowelsContinuesCheck(wordArr: [String]) -> Bool {
    var vowelsContinuesCount = 0
    var notVowelsContinuesCount = 0

    for i in 0..<wordArr.count {
        if vowels.contains(wordArr[i]) {
            vowelsContinuesCount += 1
            notVowelsContinuesCount = 0
//            print(vowelsContinuesCount, notVowelsContinuesCount)
            if vowelsContinuesCount >= 3 || notVowelsContinuesCount >= 3 {
                break
            }
        }
        else if !vowels.contains(wordArr[i]) {
            vowelsContinuesCount = 0
            notVowelsContinuesCount += 1
//            print(vowelsContinuesCount, notVowelsContinuesCount)
            if vowelsContinuesCount >= 3 || notVowelsContinuesCount >= 3 {
                break
            }
        }
    }
    return vowelsContinuesCount >= 3 || notVowelsContinuesCount >= 3 ? false : true
}

func sameAlphabetCheck(wordArr: [String]) -> Bool {
    var stack = [String]()
    var result = true

    for i in 0..<wordArr.count {
        if let last = stack.last {
            if last == wordArr[i] {
                result = false
                break
            }
        }
        if wordArr[i] == "e" || wordArr[i] == "o" {
            continue
        }
        stack.append(wordArr[i])
    }
    return result
}

while word != "end" {
    let wordArr = word.map { String($0) }
    let vowelResult  = vowelsCheck(wordArr: wordArr)
    let continuesVowelResult = vowelsContinuesCheck(wordArr: wordArr)
    let sameWordResult = sameAlphabetCheck(wordArr: wordArr)

    if vowelResult && continuesVowelResult && sameWordResult {
        print("<\(word)> is acceptable.")
    }
    else {
        print("<\(word)> is not acceptable.")
    }


    word = String(readLine()!)
}
