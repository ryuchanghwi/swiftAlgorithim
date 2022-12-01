//
//  진료 순서 정하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/01.
//

import Foundation

/*
 0.진료 순서 정하기
 */

// 3 76 24
// 76 24 3
func solution(_ emergency:[Int]) -> [Int] {
    //큰 수부터 정렬하는 배열
    let sortedArray = emergency.sorted(by: >)
    //결과를 담는 배열
    var resultArray = [Int]()
    /*
     emergency 배열과 정렬된 배열을 순회하며
     같은게 나오면 정렬 배열의 인덱스 +1 을 결과 배열에 담는다.
     */
    for i in emergency {
        for j in 0..<sortedArray.count {
            if i == sortedArray[j] {
                resultArray.append(j + 1)
            }
        }
    }
    
    return resultArray
}
//func solution(_ emergency:[Int]) -> [Int] {
//    return emergency.map { data in
//        emergency.filter { $0 > data }.count + 1
//    }
//}
//다른 사람 풀이
