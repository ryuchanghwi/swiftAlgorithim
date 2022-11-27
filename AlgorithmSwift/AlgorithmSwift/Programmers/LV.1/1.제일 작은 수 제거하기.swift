//
//  1.제일 작은 수 제거하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/27.
//

import Foundation
/*
 1.제일 작은 수 제거하기
 */
func solution(_ arr:[Int]) -> [Int] {
    let miniumValue = arr.sorted()[0]
    let miniumIndex = Int(arr.firstIndex { $0 == miniumValue }!)
    var arrValue = arr
    arrValue.remove(at: miniumIndex)
    return arrValue.count == 0 ? [-1] : arrValue
}
