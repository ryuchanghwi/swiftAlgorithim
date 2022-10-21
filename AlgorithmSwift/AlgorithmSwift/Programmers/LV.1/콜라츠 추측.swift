//
//  콜라츠 추측.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/19.
//

/*
 종료 조건을 맞을 떄까지 계속 순환한다. but 순회의 최댓값은 두었음
 인자는 기본적으로 let 이기 때문에 변수로 할당을 해서 다른 값을 할당할 수 있게 하였음
 조건을 지날 때 마다 카운트 +=1를 해준다.
 */
import Foundation
func solution(_ num:Int) -> Int {
    var value = num
    var result = 0
    while true {
        //종료 조건(1)
        if value == 1 {
            break
        }
        //종료 조건(2)
        else if result == 500 {
            result = -1
            break
        }
        if value % 2 == 0 {
            value = value / 2
            result += 1
            continue
        }
        else if value % 2 == 1 {
            value = 3 * value + 1
            result += 1
        }
    }
    return result
}
