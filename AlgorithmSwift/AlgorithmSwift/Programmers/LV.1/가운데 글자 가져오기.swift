//
//  가운데 글자 가져오기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/08.
//

import Foundation
/*
 1. 가운데 글자 가져오기
 */
func solution(_ s:String) -> String {
    let sCount = s.count
    // 5일떄는 2, 7일떄는 3... s / 2 인덱스?
    // 4일떄는 1,2 6일때는 2,3 8일떄는 34 s / 2 -1, s/2
    let sArray = s.map { value in
        String(value)
    }
    return sCount % 2 == 0 ? sArray[sCount / 2 - 1]+sArray[sCount / 2] : sArray[sCount / 2]
}
//다른 사람 풀이
//func solution(_ s:String) -> String {
//    if Array(s).count % 2 == 0 {
//        return String(Array(s)[(s.count/2)-1...(s.count/2)])
//    }else{
//        return String(Array(s)[s.count/2])
//    }
//}
