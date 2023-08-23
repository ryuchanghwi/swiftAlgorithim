//
//  영어 끝말잇기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/23.
//

import Foundation

/*
문제 제약 조건
1) 같은 단어를 말하면 짐 -> 같은 단어인지 확인하는 배열 만들기
2) 이어서 말하지 않으면 짐 -> 이어서 말하는지 확인하는 stack만들기
*/

func checkEndWord(_ word: String) -> Character {
    let endIndex = word.endIndex
    return word[word.index(before: endIndex)]
}
func checkFirstWord(_ word: String) -> Character {
    let firstIndex = word.startIndex
    return word[firstIndex]
}

func solution(_ n:Int, _ words:[String]) -> [Int] {
    var firstIndex = words[0].startIndex
    var endIndex = words[0].endIndex
    
    var wordArray: [String] = [words[0]]
    var firstWordStack: [Character] = [
        checkEndWord(words[0])
    ]
    var result: [Int] = [0, 0]
    for i in 1..<words.count {
        
        // 1. 종료 조건
        if checkEndWord(words[i - 1]) != checkFirstWord(words[i]) || wordArray.contains(words[i]) {
            print(words[i], i,  "중단")
            result[0] = i % n + 1
            result[1] = i / n + 1
            break
        }
        wordArray.append(words[i])
    }
    return result
}
