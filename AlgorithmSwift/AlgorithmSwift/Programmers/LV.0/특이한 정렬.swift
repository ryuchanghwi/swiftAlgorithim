//
//  특이한 정렬.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/03.
//

import Foundation
/*
 정수 n을 기준으로 n과 가까운 수부터 정렬하려고 합니다. 이때 n으로부터의 거리가 같다면 더 큰 수를 앞에 오도록 배치합니다. 정수가 담긴 배열 numlist와 정수 n이 주어질 때 numlist의 원소를 n으로부터 가까운 순서대로 정렬한 배열을 return하도록 solution 함수를 완성해주세요.
 */
func solution(_ numlist:[Int], _ n:Int) -> [Int] {
    //numlist - n의 배열
    let nMinusArray = numlist.map { value in
        abs(value - n)
    }
    var compareDic = [Int : Int]()
    for i in 0..<nMinusArray.count {
        //
        compareDic.updateValue(nMinusArray[i], forKey: numlist[i])
    }
    let result = compareDic.sorted {
        if $0.value == $1.value {
            return $0.key > $1.key
        }
        else {
            return $0.value < $1.value
        }

    }
    return result.map { key, value in
        Int(key)
    }
}
// [-3 -2 -1 0 -1 2] [1, 2, 3, 4, 5, 6]
//[4, 5, 3, 6, 2, 1]
