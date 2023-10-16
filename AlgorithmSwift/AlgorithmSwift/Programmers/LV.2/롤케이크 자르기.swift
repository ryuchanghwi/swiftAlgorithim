//
//  롤케이크 자르기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/10/16.
//

import Foundation

func solution(_ topping:[Int]) -> Int {
    var totalToppingDic = [Int: Int]() // 전체 롤케이크의 토핑: 갯수
    var toppingSet = Set<Int>() // 나의 토핑 갯수
    var result = 0 // 토핑 수가 같이지는 카운트
    for i in 0..<topping.count { // 토핑과 갯수를 세팅
        if totalToppingDic.keys.contains(topping[i]) {
            let tempValue = totalToppingDic[topping[i]]!
            totalToppingDic[topping[i]] = 1 + tempValue
        }
        else {
            totalToppingDic[topping[i]] = 1
        }
    }
    
    for i in 0..<topping.count {
        toppingSet.insert(topping[i]) // set에 토핑 갯수 추가(중복 불가)
        totalToppingDic[topping[i]]! -= 1 // 토핑에 추가 된 녀석의 갯수를 빼기
        if totalToppingDic[topping[i]]! == 0 { // 만약에 빼서 값이 0이 되면 key도 제거
            totalToppingDic[topping[i]] = nil
        }
        if totalToppingDic.keys.count == toppingSet.count {
            result += 1
        }
    }
    return result
}
