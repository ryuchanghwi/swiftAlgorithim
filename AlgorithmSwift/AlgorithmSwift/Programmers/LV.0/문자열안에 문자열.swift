//
//  문자열안에 문자열.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/16.
//

import Foundation
func solution(_ str1:String, _ str2:String) -> Int {
    return str1.contains(str2) ? 1 : 2
}
