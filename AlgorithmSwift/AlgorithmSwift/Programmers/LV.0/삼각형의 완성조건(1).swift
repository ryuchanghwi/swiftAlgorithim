//
//  삼각형의 완성조건(1).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/17.
//

import Foundation
func solution(_ sides:[Int]) -> Int {
    let sortedSides = sides.sorted()
    return sortedSides[2] < sortedSides[0] + sortedSides[1] ? 1 : 2
}
