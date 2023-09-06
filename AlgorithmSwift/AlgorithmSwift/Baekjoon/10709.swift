//
//  10709.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/03.
//

import Foundation


let inputData = readLine()!.split(separator: " ").map { Int($0)! }

let H = inputData[0] // 높이

let W = inputData[1] // 너비


// 우선 기본으로 -1로 이중배열을 세팅
var result = Array(repeating: Array(repeating: -1, count: W), count: H)

// H만큼 날씨 받기
for h in 0..<H {
    // 받은 날씨
    let weather = readLine()!.map { String($0) }
    // 카운트를 기본적으로 -1로 할당 - "c"가 나오는 이후로부터 1씩 커지게 하기 위해
    var count = -1
    for i in 0..<weather.count {
        if weather[i] == "c" { // c가 나왔다면
            count = -1
            count += 1 // 카운트에 1을 더해주기
            result[h][i] = count // 배열에 할당
        }
        else if i >= 1 { // out of range를 막기 위해
            if result[h][i - 1] != -1 { // -1이 아니라면 이전 값에 "c"가 나왔다는 의미 or 숫자가 커지고 있다는 의미
                count += 1 // 숫자를 + 1해주기
                result[h][i] = count // 할당
            }
        }
    }
}

for line in result {
    print(line.map { String($0) }.joined(separator: " "))
}
