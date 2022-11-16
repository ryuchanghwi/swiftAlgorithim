//
//  약수의 개수와 덧셈.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/15.
//

import Foundation
/*
 약수의 개수와 덧셈
 */
func solution(_ left:Int, _ right:Int) -> Int {
    var plusArray = [Int]()
    var minusArray = [Int]()
    var count = 0
    for i in left...right {
        for j in 1...i {
            if i % j == 0 {
                count += 1
            }
        }
        count % 2 == 0 ? plusArray.append(i) : minusArray.append(i)
        count = 0
    }
    return plusArray.reduce(0, +) - minusArray.reduce(0, +)
}
