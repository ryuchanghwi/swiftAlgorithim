//
//  4659.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/02.
//

import Foundation


/*
 3가지 조건
 1. 모음을 반드시 하나 포함해야 함
 2. 모음이 3개 혹은 자음이 3개 연속으로 오면 안된다.
 3. 갈은 글자가 연속으로 2번오면 안된다. but ee, oo는 혀용
 */


var word = String(readLine()!)


var vowels: [String] = ["a", "e", "i", "o", "u"] // 모음 배열

// 모음이 하나 포함되어 있는지 확인하는 메서드
func vowelsCheck(wordArr: [String]) -> Bool {
    var result = 0 // 모음 카운트
    for i in vowels { // 모음을 순회
        let count = wordArr.filter { i == $0 }.count // 문자 배열에 같은게 있는지 확인 의 카운트
        if count >= 1 { // 같은거의 카운트가 1개 이상이면
            result += 1 // result 한개 추가
        }
    }
    return result == 0 ? false : true // 0개면 false 1개 이상이면 true
}

// 모음, 자음이 3개 연속으로 오는지 확인하는 메서드
func vowelsContinuesCheck(wordArr: [String]) -> Bool {
    var vowelsContinuesCount = 0 //모음 연속 카운트
    var notVowelsContinuesCount = 0 //자음 연속 카운트

    for i in 0..<wordArr.count {
        if vowels.contains(wordArr[i]) {
            vowelsContinuesCount += 1 //모음이면 현재 값에 + 1
            notVowelsContinuesCount = 0 //자음은 초기화
            if vowelsContinuesCount >= 3 || notVowelsContinuesCount >= 3 { // 3개 이상이 나오면 스탑
                break
            }
        }
        else if !vowels.contains(wordArr[i]) {
            vowelsContinuesCount = 0 //모음은 초기화
            notVowelsContinuesCount += 1 //자음은 현재 값에 + 1
            if vowelsContinuesCount >= 3 || notVowelsContinuesCount >= 3 {
                break
            }
        }
    }
    return vowelsContinuesCount >= 3 || notVowelsContinuesCount >= 3 ? false : true // 자음이나 모음이 연속 3이상 나오면 false 아니면 true
}

// 갈은 글자가 연속으로 2번오면 안된다. but ee, oo는 혀용하는 메서드
func sameAlphabetCheck(wordArr: [String]) -> Bool {
    var stack = [String]() // 스택
    var result = true

    for i in 0..<wordArr.count { // 문자 배열 순회
        if let last = stack.last { // 스택에 값이 있는 경우
            if last == wordArr[i] {
                // 현재 순회 값이랑 스택에 있는 마지막 값이 같다면 false하고 브레이크
                result = false
                break
            }
        }
        if wordArr[i] == "e" || wordArr[i] == "o" { // "e"와 "o"이면 스택에 넣지않고 넘어가기
            continue
        }
        stack.append(wordArr[i])
    }
    return result
}

while word != "end" { // "end"가 나올 때 까지 문자열 계속 받기
    let wordArr = word.map { String($0) }
    let vowelResult  = vowelsCheck(wordArr: wordArr)
    let continuesVowelResult = vowelsContinuesCheck(wordArr: wordArr)
    let sameWordResult = sameAlphabetCheck(wordArr: wordArr)

    
    // 모두 만족하면 허용
    if vowelResult && continuesVowelResult && sameWordResult {
        print("<\(word)> is acceptable.")
    }
    // 아니면 허용 x
    else {
        print("<\(word)> is not acceptable.")
    }


    word = String(readLine()!)
}
