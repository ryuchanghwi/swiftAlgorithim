//
//  영어가 싫어요.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/25.
//

import Foundation
func solution(_ numbers:String) -> Int64 {
    //비교를 위한 영문 넘버
    let numbersArray = ["zero", "one", "two", "three", "four", "five", "six", "seven", "eight", "nine"]
    //결과값 - numbers를 할당해 수정하기 위해
    var result = numbers
    //배열의 인덱스를 활용
    var index = 0
    //for문을 돌며 해당 영문넘버가 result에 포함된다면 교체 ex) two -> 2
    for i in numbersArray {
        if numbers.contains(i) {
            //replacingOccurrences함수 - of 를 with로 바꿈
            result = result.replacingOccurrences(of: i, with: String(index))
        }
        //익덱스를 맞춰주기 위한 +1
        index += 1
    }

    return Int64(result)!
}
