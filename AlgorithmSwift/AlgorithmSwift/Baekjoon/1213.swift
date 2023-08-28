//
//  1213.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/28.
//

import Foundation

let inputWord = readLine()!

var wordArray = inputWord.map { String($0) }
var wordDic: [String: Int] = [:]


var result: String = ""
var reversedResult = ""

for word in wordArray {
    if wordDic.keys.contains(word) {
        wordDic[word]! += 1
    }
    else {
        wordDic[word] = 1
    }
}

let oddCount = wordDic.values.filter { $0 % 2 == 1 }.count

/*
 알파뱃의 갯수 중 홀수가 1개 이상이면 팰린드롬을 만들지 못한다.
 */
if oddCount > 1 {
    print("I'm Sorry Hansoo")
}

else {
    /*
     팰린드롬이기 때문에 앞과 앞의 리버스를 따로 만들고 붙인다. "AB" + "BA"
     홀수 갯수인 경우는 짝수 갯수만큼만 붙이고 중간에 넣는다. "AB" "C" "BA"
     */
    for (key, value) in wordDic {
        // 짝수
        if value % 2 == 0 {
            result += String(repeating: key, count: value / 2)
        }
        // 홀수
        else {
            result += String(repeating: key, count: value / 2)
            wordDic[key]! = 1
        }
    }
    result = String(result.sorted())
    reversedResult = String(result.reversed())
    result += wordDic.filter { $0.value == 1}.keys.reduce("", +)
    print(result + reversedResult)
}


