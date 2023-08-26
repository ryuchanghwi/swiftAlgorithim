//
//  JadenCase 문자열 만들기 .swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/26.
//

import Foundation

func solution(_ s:String) -> String {
    var result = ""
    var wordStep = true // " "공백 다음에는 true로 만들어주기
    for i in s {
        print(i)
        if String(i) == " " {
            wordStep = true
            result += String(i)
        }
        else {
            if wordStep { true일 때는 대문자
                result += String(i.uppercased())
            }
            else {
                result += String(i.lowercased())
            }
            wordStep = false
        }
    }
    return result
}
