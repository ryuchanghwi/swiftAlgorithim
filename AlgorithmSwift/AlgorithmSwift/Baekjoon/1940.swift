//
//  1940.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/28.
//

import Foundation

let materialCount = Int(readLine()!)!

var goal = Int(readLine()!)!

let materialArray = readLine()!.split(separator: " ").map { Int($0)! }

var result = 0

for i in 0..<materialArray.count {
    // tempGoal은 목표 수 - 현재 배열의 Int 값
    let tempGoal = goal - materialArray[i]
    // 현재 배열의 Int 값 + tempGoal이 goal이면 되기 때문에 contains로 찾기
    if materialArray.contains(tempGoal) {
        result += 1
    }
}
// 배열의 중복이 존재하기 때문에 2로 나누기
print(result / 2)
