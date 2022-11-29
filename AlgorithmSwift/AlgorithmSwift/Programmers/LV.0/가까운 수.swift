//
//  가까운 수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/29.
//

import Foundation
/*
 0.가까운 수
 */
func solution(_ array:[Int], _ n:Int) -> Int {
    let minusArray = array.map { value in
        abs(value - n)
    }
    print(minusArray)
    var arrayDic = [Int: Int]()
    for i in 0..<array.count {
        arrayDic.updateValue(minusArray[i], forKey: array[i])
    }
    print(arrayDic)
    let sortedArrayDic = arrayDic.sorted { (first, second) in
        if first.value == second.value {
            return first.key < second.key
        }
        return first.value < second.value
    }
    
    return sortedArrayDic[0].key
}
