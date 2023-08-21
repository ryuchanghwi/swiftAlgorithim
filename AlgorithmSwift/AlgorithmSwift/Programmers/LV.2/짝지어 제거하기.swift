//
//  짝지어 제거하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/19.
//

import Foundation

func solution(_ s:String) -> Int{
    var stack: [Character] = []
    for i in s {
        if !stack.isEmpty && stack.last! == i {
            stack.removeLast()
        }
        else {
            stack.append(i)
        }
    }
    return stack.isEmpty ? 1 : 0
}
