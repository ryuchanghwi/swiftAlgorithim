//
//  최솟값 만들기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/11.
//

import Foundation
/*
 2.최솟값 만들기
 */

func solution(_ A:[Int], _ B:[Int]) -> Int
{
    var ans = 0
    let sortedA = A.sorted()
    let sortedB = B.sorted(by: >)
    
    for i in 0..<A.count {
        ans += sortedA[i] * sortedB[i]
    }
    
    return ans
}
