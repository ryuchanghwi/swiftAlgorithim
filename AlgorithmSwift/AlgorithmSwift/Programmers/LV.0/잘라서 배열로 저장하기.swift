//
//  잘라서 배열로 저장하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/01/02.
//

import Foundation
//0. 잘라서 배열로 저장하기
func solution(_ my_str:String, _ n:Int) -> [String] {
    var myStr = my_str
    var result : [String] = []
    var singleResult = ""
    var myStrArray = Array(myStr)
    var myStrArrayCount = myStrArray.count
    for i in 0..<myStrArray.count {
        singleResult += String(myStrArray[i])
        if singleResult.count == n {
            result.append(singleResult)
            singleResult = ""
            myStrArrayCount -= n
        }
    }
    if myStrArrayCount > 0 {
        result.append(singleResult)
    }
    return result
}
