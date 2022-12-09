//
//  모의고사.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/10.
//

import Foundation

/*
 1.모의고사
 */

func solution(_ answers:[Int]) -> [Int] {
    let firstMan = [1, 2, 3, 4, 5]
    let secondMan = [2, 1, 2, 3, 2, 4, 2, 5]
    let thirdMan = [3, 3, 1, 1, 2, 2, 4, 4, 5, 5]
    
    var firstCount = 0
    var secondCount = 0
    var thirdCount = 0
    
    for i in 0..<answers.count {
        if answers[i] == firstMan[i % firstMan.count]{
            firstCount += 1
        }
        if answers[i] == secondMan[i % secondMan.count] {
            secondCount += 1
        }
        if answers[i] == thirdMan[i % thirdMan.count] {
            thirdCount += 1
        }
        
    }
    
    let dic : [Int : Int] = [
        1 : firstCount,
        2 : secondCount,
        3 : thirdCount]
    let maxValue = dic.values.max()!
    
    let sortedDic = dic.filter { element in
        element.value == maxValue
    }
    return sortedDic.keys.sorted(by: <)
}
