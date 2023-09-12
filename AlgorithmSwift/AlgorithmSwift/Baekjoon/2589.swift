//
//  2589.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/12.
//

import Foundation

let input = readLine()!.split(separator: " ").map { Int($0)! }

let 세로 = input[0]
let 가로 = input[1]

var map = [[String]]()

for _ in 0..<세로 {
    let line = readLine()!.map { String($0) }
    map.append(line)
}

let dx = [1, -1, 0, 0]
let dy = [0, 0, -1, 1]



// 좌표를 넣어서 지도 다시 그리기(너비
func bfs(location: [Int]) -> Int {
    var distanceArray = Array(repeating: Array(repeating: -1, count: 가로), count: 세로)
    var checkArray = Array(repeating: Array(repeating: false, count: 가로), count: 세로)
    // 세로
    let h = location[0]
    // 가로
    let w = location[1]

    distanceArray[h][w] = 0
    checkArray[h][w] = true // 여기!!!!!

    var queue = [location]

    while !queue.isEmpty {
        let fifo = queue.removeFirst()

        let x = fifo[1]
        let y = fifo[0]

        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]


            if nx >= 0 && ny >= 0 && nx < 가로 && ny < 세로 {

                if checkArray[ny][nx] == false && map[ny][nx] == "L" {
                    distanceArray[ny][nx] = distanceArray[y][x] + 1 // 이동할때마다 갈 수 있는 곳에 + 1씩을 해주면서 가기
                    checkArray[ny][nx] = true
                    queue.append([ny, nx])
                }
            }
        }
    }


//    print(distanceArray)
    var maxValue = 1
    for i in 0..<세로 {
        for j in 0..<가로 {
            maxValue = max(maxValue, distanceArray[i][j])
        }
    }

    return maxValue
}
//print(bfs(location: [3, 0]))


var L위치배열 = [[Int]]()

for i in 0..<세로 {
    for j in 0..<가로 {
        if map[i][j] == "L" {
            L위치배열.append([i, j])
        }
    }
}
var result = 0
for i in 0..<L위치배열.count {
    result = max(bfs(location: L위치배열[i]), result)
}
print(result)

