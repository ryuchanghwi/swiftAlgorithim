//
//  순열 검사.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/09.
//

import Foundation
//배열을 정렬한 후 순회하며 빠진 정수가 있는지 판단
func solution(_ arr:[Int]) -> Bool {
    var answer = true
    //배열 정렬
    let sortedArray = arr.sorted()
    //배열값과 비교할 값
    var arrayValue = 1
    for i in sortedArray {
        if i != arrayValue {
            answer = false
            break
        }
        else {
            arrayValue += 1
            answer = true
        }
    }
    return answer
}
