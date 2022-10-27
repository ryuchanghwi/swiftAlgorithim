//
//  암호 해독.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/25.
//

import Foundation
/*
 cipher을 배열로 만들고 index+1을 code로 나눠 나머지가 0이면 해당 알파벳을 추가
 */
func solution(_ cipher:String, _ code:Int) -> String {
    var result = ""
    var index = 0
    let cipherArray = cipher.map { value in
        String(value)
    }
    let cipherArrayCount = cipherArray.count
    for i in cipherArray {
        if (index + 1) % code == 0 {
            result += i
        }
        index += 1
    }
    return result
}
