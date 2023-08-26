//
//  시저 암호.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/26.
//

import Foundation
func replaceWord(_ s: String, _ n: Int) -> String {
    // 소문자 배열
    let alphabets = "abcdefghijklmnopqrstuvwxyz".map { String($0) }
    // 대문자 배열
    let Alphabets = alphabets.map { $0.uppercased() }
    
    if alphabets.contains(s) || Alphabets.contains(s) {
        for i in 0..<alphabets.count {
            // 알파벳과 같은 인덱스 찾기
            if alphabets[i] == s || Alphabets[i] == s {
                // 소문자 이면 소문자로 리턴
                if s == alphabets[i].lowercased() {
                    return alphabets[(i + n) % 26]
                }
                else {
                    
                // 대문자 이면 대문자로 리턴
                    return Alphabets[(i + n) % 26]
                }
            }
        }
    }
    
    return s
}


func solution(_ s:String, _ n:Int) -> String {
    return s.map { replaceWord(String($0), n) }.reduce("", +)
}
