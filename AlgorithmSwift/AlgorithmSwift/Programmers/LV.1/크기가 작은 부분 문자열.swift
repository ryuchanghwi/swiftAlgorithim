//
//  크기가 작은 부분 문자열.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/25.
//

import Foundation

func solution(_ t:String, _ p:String) -> Int {
    var pCount = p.count
    let tArray = t.map { String($0) }
    var caseArray = [Int]()
    for i in 0...tArray.count - pCount {
        var num = tArray[i...].prefix(pCount).reduce("", +)
        caseArray.append(Int(num)!)
    }
    return caseArray.filter { $0 <= Int(p)! }.count
}
