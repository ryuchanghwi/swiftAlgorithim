//
//  평균 구하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/24.
//

import Foundation
/*
평균 구하기
 */
func solution(_ arr:[Int]) -> Double {
    //배열의 int값을 Double값으로 변환한다.
    let sumArray = arr.map { value in
        Double(value)
        //모든 값들을 더한다.
    }.reduce(0, +)
    //평균을 구하기 위해서 더한 값을 배열의 값으로 나눈다.
    return sumArray / Double(arr.count)
}
