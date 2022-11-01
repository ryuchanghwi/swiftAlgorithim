//
//  주사위의 개수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/02.
//

import Foundation
/*
 주사위의 개수
 box에 최대로 들어가게 하기 위해서
 가로 세로 높이를 각각 모서리로 나눈 몫을 곱한다.
 */
func solution(_ box:[Int], _ n:Int) -> Int {
    return box.map { value in
        value / n
    }.reduce(1, *)
}
