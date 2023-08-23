//
//  가장 가까운 같은 글자.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/23.
//

import Foundation

import Foundation
/*
딕셔너리에 ["알파벳": 인덱스]를 저장
결과 배열에 [-1, -1...] 만들기

제약 조건
만약에 같은 "알파벳"이 나타났다면 (현재 인덱스 - 이 전 인덱스로 업데이트)

결과 배열도 수정
*/

func solution(_ s:String) -> [Int] {
    let sArray = s.map { $0 }
    var locationDic: [Character: Int] = [:]
    var result: [Int] = Array(repeating: -1, count: sArray.count)

    for i in 0..<sArray.count {
        if locationDic.keys.contains(sArray[i]) {
            var preIndex = locationDic[sArray[i]]!
            // 배열에 값 업데이트
            result[i] = i - preIndex
            // 인덱스 위치 업데이트
            locationDic[sArray[i]] = i - preIndex
        }
        locationDic[sArray[i]] = i
    }
    return result
}
