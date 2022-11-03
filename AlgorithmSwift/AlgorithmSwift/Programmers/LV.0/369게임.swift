//
//  369게임.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/03.
//

import Foundation
/*
 369게임
 */


func solution(_ order:Int) -> Int {
    return String(order).map { value in
        String(value)
    }.filter { value in
        ["3", "6", "9"].contains(value)
    }.count
}
