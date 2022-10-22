//
//  피자 나눠 먹기(1).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/22.
//

import Foundation
/*
 피자 나눠 먹기(1)
 최소 한 조각씩 먹기 위한 피자의 갯수
 사람 / 피자조각(7)의 갯수와 나머지가 있을 경우 + 1로 풀이
 */

func solution(_ n:Int) -> Int {
    let share = n / 7
    let rest = n % 7
    return rest == 0 ? share : share + 1
}
