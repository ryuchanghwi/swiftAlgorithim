//
//  12869.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/13.
//

import Foundation


import Foundation

let scvCount = Int(readLine()!)!

let scvHP = readLine()!.split(separator: " ").map { Int($0)! }

var hp = [0, 0, 0]
for i in 0..<scvCount {
    hp[i] = scvHP[i]
}
var count = 0

while hp.filter({ $0 > 0 }).count != 0 {
    hp = hp.sorted(by: >)
    hp[0] -= 9
    hp[1] -= 3
    hp[2] -= 1
    count += 1

}

print(count)


import Foundation

let n = Int(String(readLine()!))!
let arr = readLine()!.split(separator: " ").map{Int(String($0))!}
let damage = [[1, 3, 9],
              [1, 9, 3],
              [3, 1, 9],
              [3, 9, 1],
              [9, 1, 3],
              [9, 3, 1]]
var visited = Array(repeating: Array(repeating: Array(repeating: false, count: 61), count: 61), count: 61)

var queue = [((Int, Int, Int), Int)]()

func bfs(){
    if arr.count == 1 {
        queue.append(((arr[0], 0, 0),0))
    }else if arr.count == 2 {
        queue.append(((arr[0], arr[1], 0),0))
    }else{
        queue.append(((arr[0], arr[1], arr[2]),0))
    }

    while !queue.isEmpty{
        let pop = queue.removeFirst()
        if pop.0.0 == 0 && pop.0.1 == 0 && pop.0.2 == 0 {
            print(pop.1)
            break
        }

        for i in 0..<6{
            var a = pop.0.0 - damage[i][0]
            var b = pop.0.1 - damage[i][1]
            var c = pop.0.2 - damage[i][2]
            if a >= 0 && b >= 0 && c >= 0{
                if !visited[a][b][c]{
                    queue.append(((a, b, c), pop.1 + 1))
                    visited[a][b][c] = true
                }
            }else{
                if a < 0 {
                    a = 0
                }
                if b < 0 {
                    b = 0
                }
                if c < 0 {
                    c = 0
                }
                if !visited[a][b][c]{
                    queue.append(((a, b, c), pop.1 + 1))
                    visited[a][b][c] = true
                }
            }

        }
    }
}
bfs()
