//
//  음양 더하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/29.
//

import Foundation
/*
 음양 더하기
 
 아이디어
 absolutes의 모든 값을 더한다.
 signs에 false가 있는 인덱스 값을 알아낸다.
 absoultes에 false였던 값들만 모두 더한 후 뺀다.
 */


func solution(_ absolutes:[Int], _ signs:[Bool]) -> Int {
    //전체 index 더하기
    let plusValue = absolutes.reduce(0, +)
    //음수인 인덱스를 저장할 배열
    var falseIndexArray = [Int]()
    var index = 0
    for i in signs {
        if i == false {
            //인덱스 저장
            falseIndexArray.append(index)
        }
        index += 1
    }
    var minusValue = 0
    for i in falseIndexArray {
        //인덱스 값을 접근해서 추가하기
        minusValue += absolutes[i]
    }
    return plusValue - 2 * minusValue
}
