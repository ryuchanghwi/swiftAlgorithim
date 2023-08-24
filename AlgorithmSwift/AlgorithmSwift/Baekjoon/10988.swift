//
//  10988.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/24.
//

import Foundation

/*
 스택을 활용해서 풀기
 
 */

import Foundation

let inputWord = readLine()!

var stack: [Character] = []

var wordArray = inputWord.map { $0 }
let wordCount = wordArray.count

// 배열이 홀수이면 가운데 제거
if wordArray.count % 2 == 1 {
    wordArray.remove(at: wordCount / 2)
}

// 반복문
for i in wordArray {
    // 스택에 마지막과 i 값이 같으면 스택에 마지막 제거
    if !stack.isEmpty && stack.last! == i {
        stack.removeLast()
    }
    // 아니면 추가
    else {
        stack.append(i)
    }
}
print(stack.isEmpty ? 1 : 0)
