//
//  숫자 찾기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/16.
//

import Foundation
func solution(_ num:Int, _ k:Int) -> Int {
    var result = 1
    //map을 이용해 num을 String Array로 변환한다.
    let stringArray = String(num).map { value in
        String(value)
    }
//    String Array를 순회하며 같은 것이 있을 때까지 반복하고 아니면 index를 높여준다.
    for i in stringArray {
        if i == String(k) {
            break
        }
        result += 1
    }
    //만약 일치하는 것이 없으면 -1를 할당해준다.
    if !stringArray.contains(String(k)) {
        result = -1
    }
    return result
}
