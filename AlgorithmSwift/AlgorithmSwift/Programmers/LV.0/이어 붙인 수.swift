//
//  이어 붙인 수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/05/03.
//

import Foundation

func solution(_ num_list:[Int]) -> Int {
    var oddArray = num_list.filter { $0 % 2 == 1}
    var evenArray = num_list.filter { $0 % 2 == 0 }
    var oddValue = oddArray.map({ String($0)}).reduce("", +)
    var evenValue = evenArray.map({ String($0)}).reduce("", +)
    return Int(oddValue)! + Int(evenValue)!
}
