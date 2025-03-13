//
//  2979(트럭주차).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 3/13/25.
//

import Foundation
let costRules = readLine()!.split(separator: " ").map { Int($0)! }

var timeLine: [Int] = []

for _ in 0..<100 {
    timeLine.append(0)
}



for _ in 0..<3 {
    let usingTimeLine = readLine()!.split(separator: " ").map { Int($0)! }
    let startTime = usingTimeLine[0]
    let endTime = usingTimeLine[1]
    for i in startTime..<endTime {
        timeLine[i] = timeLine[i] + 1
    }
}

var totalCost = 0

for i in timeLine {
    if i == 1 {
        totalCost += costRules[0]
    }
    else if i == 2 {
        totalCost += costRules[1] * 2
    }
    else if i == 3 {
        totalCost += costRules[2] * 3
    }
}

print(totalCost)
