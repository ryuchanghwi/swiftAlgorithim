//
//  배열 회전시키기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/02.
//

import Foundation
/*
 배열 회전시키기
 
 현재 필요한 index
 0,  마지막 인덱스
 인덱스의 교체와 제거를 통해 해결
 */
func solution(_ numbers:[Int], _ direction:String) -> [Int] {
    //결과 배열
    var resultArray = numbers
    //0번째 인덱스 값
    var zeroValue = numbers[0]
    //마지막 인덱스 값
    var lastValue = numbers.last
    if direction == "right" {
        resultArray.insert(lastValue!, at: 0)
        resultArray.removeLast()
    }
    else {
        resultArray.append(zeroValue)
        resultArray.removeFirst()
    }
    return resultArray
}
