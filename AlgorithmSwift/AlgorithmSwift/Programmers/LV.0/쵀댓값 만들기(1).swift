//
//  쵀댓값 만들기(1).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/22.
//

import Foundation

/*
 최댓값 만들기(1)
 1.배열을 정렬해서 최댓값을 쉽게 구할 수 있도록 한다.
 2.배열의 갯수를 구함
 3.배열의 마지막과 마지막 - 1 값을 곱함
 */
func solution(_ numbers:[Int]) -> Int {
    //정렬된 배열
    let sortedArray = numbers.sorted()
    //배열 카운트
    let arrayCount = numbers.count
    let result = sortedArray[arrayCount - 1] * sortedArray[arrayCount - 2]
    return result
}
//numbers.sorted(by: >)
