//
//  2550.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/26.
//

import Foundation


// 시간 초과
//let inpudData = readLine()!.split(separator: " ").map { Int(String($0))! }
//let numsArray = readLine()!.split(separator: " ").map { Int(String($0))! }
//let n = inpudData[0]
//let k = inpudData[1]
//var sumCase = [Int]()
//for i in 0...(numsArray.count - k) {
//    sumCase.append(numsArray[i..<(i + k)].reduce(0, +))
//}
//print(sumCase.max()!)

// https://ji-musclecode.tistory.com/37
let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let numsArray = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let k = input[1]

var currentSum = numsArray[0..<k].reduce(0, +)

var maxSum = currentSum

for i in k..<n {
    // 슬라이딩 윈도우를 사용해 새로운 합 계산(효율적)

    // 이전 인덱스를 빼고 다음 인덱스를 더하면서 불필요한 중복을 최소화함
    currentSum = currentSum - numsArray[i - k] + numsArray[i]
    maxSum = max(maxSum, currentSum)
}

print(maxSum)


// 누적합, 슬라이딩 윈도우
