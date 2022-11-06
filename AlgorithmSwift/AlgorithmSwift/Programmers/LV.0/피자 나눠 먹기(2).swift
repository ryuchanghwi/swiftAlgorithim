//
//  피자 나눠 먹기(2).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/06.
//

import Foundation
/*
 피자 나눠 먹기(2)
 result * 6 = n * ?
 n과 6의 최소 공배수 / 6
 */
//func solution(_ n:Int) -> Int {
//    for i in 1...6 {
//
//    }
//    return 0
//}

/*
 6과 6의 최소공배수는 6
 10과 6의 최소공배수는 30
 4와 6의 최소 공배수는 12
 2개를 곱하고 공통인 수로 나누면 최소 공배수
 
 문제의 답은
 6 * n / (공통의 약수) / 6(조각 -> 판)
 */


func solution(_ n:Int) -> Int {
    var value = 1
    for i in 1...6 {
        if 6 % i == 0 && n % i == 0 {
            value = i
        }
    }
    return n / value
}
