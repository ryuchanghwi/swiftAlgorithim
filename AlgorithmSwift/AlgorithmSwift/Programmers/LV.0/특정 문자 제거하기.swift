//
//  특정 문자 제거하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/15.
//

import Foundation
func solution(_ my_string:String, _ letter:String) -> String {
    return my_string.map { value in
        String(value)
    }.filter { value in
        String(value) != letter
    }.reduce("", +)
}
