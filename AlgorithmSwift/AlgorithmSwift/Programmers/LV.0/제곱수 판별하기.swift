//
//  제곱수 판별하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/22.
//

import Foundation
//제곱수 판별하기
//들어오는 인자값인 n이 제곱수인지를 판별하기 위해서는
//같은 수를 곱해서 같은지 비교해야함
//while문을 돌리면서 제한 사항을 벗어나면 종료 -> 2
//제한 사항 내에서 제곱수임을 밝혀내면 -> 1
func solution(_ n:Int) -> Int {
    //제곱수인지를 비교할 값
    var num = 1
    //결과값
    var result = 0
    //반복문 돌리기
    while true {
        //종료조건(제한사항) - 종료조건이 되면 결과를 2로 바꾸고 종료
        if num * num > 1000000 {
            result = 2
            break
        }
        //종료조건(제곱수) - 같은 수를 곱해서 n과 같으면 결과를 1로 바꾸고 종료
        if num * num == n {
            result = 1
            break
        }
        //반복문 내에서 숫자를 1씩 높이며 비교
        num += 1
    }
    //결과 반환
    return result
}
//func solution(_ n:Int) -> Int {
//    return (1...n).filter{$0 * $0 == n}.isEmpty ? 2 : 1
//}
