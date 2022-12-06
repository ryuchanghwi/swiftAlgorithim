//
//  올바른 괄호.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/05.
//

import Foundation
/*
 2.올바른 괄호
 */
func solution(_ s:String) -> Bool
{
    var leftCount = 0 // )
    var rightCount = 0 // (
    var result = true
    for i in s {
        if i == "(" {
            rightCount += 1
        }
        else {
            leftCount += 1
        }

        if leftCount > rightCount {
            result = false
        }
    }
    if leftCount != rightCount {
        result = false
    }

    return result
}
