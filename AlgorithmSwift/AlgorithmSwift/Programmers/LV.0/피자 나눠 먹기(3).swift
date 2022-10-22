//
//  피자 나눠 먹기(3).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/22.
//

import Foundation
func solution(_ slice:Int, _ n:Int) -> Int {
    //피자 갯수 구하기
    let value = n / slice
    //피자 갯수가 부족한지 낱개 구하기
    let rest = n % slice
    // 낱개가 0개라면 부족하지 않음 0이 아니면 피자 갯수 + 1
    return rest == 0 ? value : value + 1
}
