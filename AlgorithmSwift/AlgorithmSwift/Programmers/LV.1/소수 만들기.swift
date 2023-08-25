//
//  소수 만들기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/25.
//

import Foundation

func findDecimalNum(_ value: Int) -> Bool { // 소수를 찾는 함수
    for i in 2..<value {
        if value % i == 0 {
            return false
        }
    }
    return true
}
func solution(_ nums:[Int]) -> Int {
    var numCaseArray: [Int] = [] // 모든 경우를 배열로 담기
    
    for i in 0..<nums.count {
        for j in (i + 1)..<nums.count {
            for k in (j + 1)..<nums.count {
                numCaseArray.append(nums[i] + nums[j] + nums[k])
            }
        }
    }
    var result = 0
    for i in numCaseArray {
        if findDecimalNum(i) == true { // 모든 경우의 배열을 순회하며 소수일 경우 카운트
            result += 1
        }
    }
    return result
}
