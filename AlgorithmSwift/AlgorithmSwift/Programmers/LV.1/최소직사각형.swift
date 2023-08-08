//
//  최소직사각형.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/08.
//

import Foundation

func solution(_ sizes:[[Int]]) -> Int {
    var aSizeArray = [Int]()
    var bSizeArray = [Int]()
    var sortedArray = sizes
    for i in 0..<sizes.count {
        sortedArray[i] = Array(sortedArray[i].sorted())
    }
    for index in 0..<sizes.count {
        aSizeArray.append(sortedArray[index][0])
        bSizeArray.append(sortedArray[index][1])
    }
    aSizeArray = Array(aSizeArray.sorted())
    bSizeArray = Array(bSizeArray.sorted())
        print(aSizeArray, bSizeArray)
    return (aSizeArray[sizes.count - 1] * bSizeArray[sizes.count - 1])
}
