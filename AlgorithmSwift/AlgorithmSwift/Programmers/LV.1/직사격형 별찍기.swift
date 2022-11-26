//
//  직사격형 별찍기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/26.
//

import Foundation
/*
 1.직사격형 별찍기
 
 */
let n = readLine()!.components(separatedBy: [" "]).map { Int($0)! }
let (a, b) = (n[0], n[1])

var star : String {
    String(repeating: "*", count: a)
}

let result = repeatElement(star, count: b)
for i in result {
    print(i)
}
