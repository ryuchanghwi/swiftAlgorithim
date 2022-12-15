//
//  직사각형 넓이 구하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/14.
//

import Foundation
/*
 0.직사각형 넓이 구하기
 */
func solution(_ dots:[[Int]]) -> Int {
    var width = 0
    var widthArray = [Int]()
    var height = 0
    var heightArray = [Int]()
    for i in dots {
        widthArray.append(i[0])
        heightArray.append(i[1])
    }
    let sortedWidthdArray = widthArray.sorted()
    let sortedHeightArray = heightArray.sorted()
    width = sortedWidthdArray.last! - sortedWidthdArray.first!
    height = sortedHeightArray.last! - sortedHeightArray.first!
    return width * height
}
