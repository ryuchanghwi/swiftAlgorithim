//
//  3474.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/03.
//

import Foundation

let T = Int(readLine()!)! // 입력받을 데이터 갯수
var result = "" // 결과

for _ in 0..<T {
    let N = Int(readLine()!)! // N!
    var count = 0
    var divisor = 5 // 5로 나누기

    while divisor <= N { // divisor가 N보다 커질떄까지
        count += N / divisor
        print(count, "카운트")
        divisor *= 5
        print(divisor, "디바이저")
    }

    result += "\(count)\n"
}

print(result)
