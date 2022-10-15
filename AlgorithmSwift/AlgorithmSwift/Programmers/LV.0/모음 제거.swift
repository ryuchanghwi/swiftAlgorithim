//
//  모음 제거.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/15.
//

import Foundation
func solution(_ my_string:String) -> String {
    return my_string
        .map { value in
        String(value)
    }.filter { value in
        !["a", "e", "i", "o", "u"].contains(value)
    }
    .reduce("", +)
}
