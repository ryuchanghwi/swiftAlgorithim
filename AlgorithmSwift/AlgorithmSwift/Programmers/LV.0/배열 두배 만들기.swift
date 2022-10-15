//
//  배열 두배 만들기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/15.
//

import Foundation
func solution(_ numbers:[Int]) -> [Int] {
    return numbers
        .map { value in
            Int(value) * 2
        }
}
