//
//  11655.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/25.
//

import Foundation
// 13 미는 메서드
func replaceValue(_ alphabet: String) -> String {
    // 소문자 배열
    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { String($0) }
    // 대문자 배열
    let Alphabets = alphabets.map { $0.uppercased() }
    
    // 알파벳인지 확인하는 조건문 아니면 리턴
    if alphabets.contains(alphabet) || Alphabets.contains(alphabet) {
        
        // 알파벳 배열만큼 순회
        for i in 0..<alphabets.count {
            
            // 알파벳과 같은 인덱스 찾기
            if alphabets[i] == alphabet || Alphabets[i] == alphabet {
                // 소문자 이면 소문자로 리턴
                if alphabet == alphabets[i].lowercased() {
                    return alphabets[(i + 13) % 26]
                }
                else {
                    
                // 대문자 이면 대문자로 리턴
                    return Alphabets[(i + 13) % 26]
                }
            }
        }
    
    }
    return alphabet
}

// 입력 값을 배열로 만들기
let inputString = readLine()!.map { String($0) }
var result = [String]()


for i in inputString {
    // 순환하며 치환하고 배열에 넣기
    result.append(replaceValue(i))
}

// 배열을 다시 문자열로 합치기
print(result.reduce("", +))
