//
//  순서쌍의 개수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/25.
//

import Foundation
/*
 순서쌍의 개수
 */
func solution(_ n:Int) -> Int {
    return     (1...n).filter { value in
        n % value == 0
    }.count / 2
}
