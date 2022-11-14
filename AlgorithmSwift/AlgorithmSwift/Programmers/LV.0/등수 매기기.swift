//
//  등수 매기기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/10.
//

import Foundation
func solution(_ score:[[Int]]) -> [Int] {
    
    var sum = score.map { $0[0] + $0[1] }   //[150, 150, 80, 190, 190, 200, 40]
    let sortedSum = sum.sorted(by: >)       //[200, 190, 190, 150, 150, 80, 40]
    var rank: Int = 1
    
    for i in 0 ..< sum.count {
        for j in 0 ..< sortedSum.count {
            if sum[i] == sortedSum[j] {
                sum[i] = rank
                break //주의 값이 할당되기 떄문에 break를 하지않으면 error 유발 가능
            }
            rank += 1
        }
        rank = 1
    }
    return sum
}
