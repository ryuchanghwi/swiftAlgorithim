//
//  2979.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/23.
//

import Foundation

/*
 1) 입력 받은 주차 시간들 중 가장 큰 값과 가장 작은 값을 가려내기 -> 마지막에 반복문의 시작과 끝으로 활용하기
 2) 딕셔너리를 활용해서 각 시간 당 몇대가 주차되어있는지 확인 [몇 분: 주차 대]
 3) 최소 값부터 최대값까지 순환하며 각 대수 * 가격
 */

let cost = readLine()!.split(separator: " ").map { Int($0)! }
var minTime = 1
var maxTime = 1

var timeDic: [Int: Int] = [:]

for _ in 0..<3 {
    let time = readLine()!.split(separator: " ").map { Int($0)! }
    minTime = min(minTime, time[0])
    maxTime = max(maxTime, time[1])
    
    for index in time[0]..<time[1] {
        if timeDic.keys.contains(index) {
            timeDic[index]! += 1
        }
        else {
            timeDic[index] = 1
        }
    }
}

var result = 0
for i in minTime..<maxTime {
    if timeDic[i] == 1 {
        result += cost[0] * timeDic[i]!
    }
    else if timeDic[i] == 2 {
        result += cost[1] * timeDic[i]!
    }
    else if timeDic[i] == 3 {
        result += cost[2] * timeDic[i]!
    }
}
print(result)
