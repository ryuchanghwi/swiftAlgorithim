//
//  10808.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/23.
//

import Foundation

/*
 최대한 반복문 줄여보기
  */

let inputWord = readLine()! //입력받는 문자열 값
let inputWordArray = inputWord.map { $0 }.sorted() // 문자열을 배열로 만들어주고 정렬
var alphabetCountArray = Array(repeating: 0, count: 26) // 문자열을 받았을 떄 알파벳을 카운트 해줄 배열
var alphabetArray = Array("abcdefghijklmnopqrstuvwxyz")

var alphabetDic: [Character: Int] = [:] // 문자: 카운트

for index in 0..<inputWordArray.count { // 입력 받은 문자 배열 반복문
    if alphabetDic.keys.contains(inputWordArray[index]) { // 키 값에 있다면 카운트 올려주기
        alphabetDic[inputWordArray[index]]! += 1
    }
    else { // 없다면 딕셔너리에 추가
        alphabetDic[inputWordArray[index]] = 1
    }
}

// 여기까지 왔을 떄 알파벳 당 몇개가 있는지 확인 가능

for index in 0..<alphabetArray.count { // 알파벳 배열의 순환
    if alphabetDic.keys.contains(alphabetArray[index]) { // 알파벳이 있다면 카운트 배열에 할당시키기
        alphabetCountArray[index] = alphabetDic[alphabetArray[index]]!
    }
}
let result = alphabetCountArray.map { String($0) }.joined(separator: " ")
print(result)
