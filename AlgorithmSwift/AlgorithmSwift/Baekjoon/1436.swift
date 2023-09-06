//
//  1436.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/06.
//

import Foundation

// 입력 받을 N값
let N = Int(readLine()!)!
var num = 666
var count = 1

while count != N {
    num += 1
    if String(num).contains("666") {
        count += 1
    }
}
print(num)
