//
//  숨어있는 숫자의 덧셈(1).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/22.
//

import Foundation
/*
 숨어있는 숫자의 덧셈(1)
 방법(1)
 1. 1부터 9까지 배열을 만든다.
 2. 빈 배열을 만든다.
 3. my_string과 배열을 비교하며 숫자가 있는지 확인
 4. 겹치는 숫자가 있으면 빈 배열에 추가
 5. 배열안에 들어간 값들을 모두 더한다.
 */
func solution(_ my_string:String) -> Int {
//    var containArray = [String]()
    //intArray안에 값들을 String으로 바꿔주기
    var intArray = [1, 2, 3, 4, 5, 6, 7, 8, 9].map { value in
        String(value)
    }
    return my_string.filter { value in
        intArray.contains(String(value))
    }.map { value in
        Int(String(value))!
    }.reduce(0, +)
}
//
//func solution(_ my_string:String) -> Int {
//    return my_string.filter{$0.isNumber}.map{Int(String($0))!}.reduce(0, +)
//}
