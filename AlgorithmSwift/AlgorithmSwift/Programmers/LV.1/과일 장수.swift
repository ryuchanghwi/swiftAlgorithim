//
//  과일 장수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/09.
//

import Foundation
/*
 1.과일 장수
 */
func solution(_ k:Int, _ m:Int, _ score:[Int]) -> Int {
    //박스 상자
    let boxCount = score.count / m
    //큰수부터 정렬
    let sortedScoreArray = score.sorted(by: >)
    var box = [Int]()
    var index = 0
    var result = 0
    print(sortedScoreArray)
        for i in sortedScoreArray {
            box.append(i)
            index += 1
            if index == m {
                result += box.sorted()[0] * m
                index = 0
                box = []
            }
        }
    return result
}
