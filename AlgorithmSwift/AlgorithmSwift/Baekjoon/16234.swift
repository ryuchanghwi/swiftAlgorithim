//
//  16234.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/12.
//

import Foundation
let input = readLine()!.split(separator: " ").map { Int($0)! }

// N * N 땅 크기
let N = input[0]
// 두 나라의 차이가 L 이상
let L = input[1]
// 두 나라의 차이가 R 이하
let R = input[2]

let dx = [1, -1, 0, 0]
let dy = [0, 0, -1, 1]


var land = [[Int]]()

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    land.append(line)
    
}

var checkArray = Array(repeating: Array(repeating: false, count: N), count: N)

/*
 완전 탐색을 하면서 두 나라의 차이가 있다면 BFS를 돌리기?
 */

func bfs(height: Int, width: Int) -> Bool {
    var openCounry = [[Int]]()
    openCounry.append([height, width])

    
    var queue = [[Int]]()
    queue.append([height, width])
    checkArray[height][width] = true // 방문 체크
    
    while !queue.isEmpty {
        let fifo = queue.removeFirst()
        
        let x = fifo[1]
        let y = fifo[0]

        
        for i in 0..<4 {
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && ny >= 0 && nx < N && ny < N {
                let minusValue = abs(land[y][x] - land[ny][nx])

                
                
                if checkArray[ny][nx] == false && (minusValue >= L && minusValue <= R) {
                    checkArray[ny][nx] = true
                    queue.append([ny, nx])
                    openCounry.append([ny, nx])
                    
                }
            }
        }
    }

    
    // 국경이 열린 나라 이동 시켜주기
    var openCountryPopulation = 0
    for i in 0..<openCounry.count {
        openCountryPopulation += land[openCounry[i][0]][openCounry[i][1]]
    }
//    print(openCountryPopulation, "인구수 합")
    // 인구수 엔빵
    let dividedOpenCountryPopulation = openCountryPopulation / openCounry.count
//    print(dividedOpenCountryPopulation, "엔빵 인구수")
    
    // 각 나라에 엔빵 인구수 할당
    for i in 0..<openCounry.count {
        land[openCounry[i][0]][openCounry[i][1]] = dividedOpenCountryPopulation
    }
    return openCounry.count <= 1 ? false : true
}

var count = 0
//
while true {
    var check = false
    // 여기가 중요
    // 2중 포문을 돌면서 이미 인구이동 된 곳이 또 이동될 수 있음
    // 따라서 bfs안에 checkArray를 두는 것이 아닌 2중 포문 밖으로 뺴서 한번 고쳐진 곳은 손댈 수 없도록!
    checkArray = Array(repeating: Array(repeating: false, count: N), count: N)
    for i in 0..<N {
        for j in 0..<N {
            if checkArray[i][j] == false {
                if bfs(height: i, width: j) == true {
                    check = true
                }
            }
        }
    }
    if check == false {
        break
    }
    count += 1
}
print(count)
