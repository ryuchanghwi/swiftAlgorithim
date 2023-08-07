//
//  11047.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/07.
//

import Foundation

func solution() -> Int {
    let temp = readLine()!.split(separator: " ").map({Int($0)!})


    let n = temp[0]
    var k = temp[1] // 비교해야 할 값

    var coins = [Int]()
    var result = 0

    for _ in 0..<n {
        coins.append(Int(readLine()!)!)
    }

    let reversedCoins = Array(coins.reversed())


    for index in 0..<n {
        var tempResult = 0
        tempResult += k / reversedCoins[index]
        k -= tempResult * reversedCoins[index]
        result += tempResult
        
    }
   return result
}
