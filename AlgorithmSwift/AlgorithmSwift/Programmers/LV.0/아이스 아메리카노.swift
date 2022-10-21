//
//  아이스 아메리카노.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/21.
//

import Foundation
func solution(_ money:Int) -> [Int] {
    //5500원으로 살 수 있는 아메리카노의 갯수
    let count = money / 5500
    //잔돈은 가지고 있는 돈 - 산 아메리카노 갯수 x 가격
    let changes = money - count * 5500
    return [count, changes]
}
