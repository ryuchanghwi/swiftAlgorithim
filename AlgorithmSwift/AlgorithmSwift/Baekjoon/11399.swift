//
//  11399.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/09.
//

import Foundation
func solution() -> Int {
    let n = Int(readLine()!)!
    var people = readLine()!.split(separator: " ").map({Int($0)!})
    people = people.sorted()
    var result = [Int]()
    for i in 0..<people.count {
        result.append(people[0...i].reduce(0, +))
    }
    return result.reduce(0, +)
}

print(solution())
