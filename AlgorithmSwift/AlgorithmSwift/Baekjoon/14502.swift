//
//  14502.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/07.
//

import Foundation

let inputData = readLine()!.split(separator: " ").map { Int($0)! }

let N = inputData[0] // 세로
let M = inputData[1] // 가로

var map = [[Int]]()

for _ in 0..<N {
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    map.append(arr) //지도 만들어주기
}

// 안전 영역 좌표 - 추후에 안전 영역에 벽을 쉽게 세우기 위해
var safeArea = [[Int]]()

for i in 0..<map.count {
    for j in 0..<map[i].count {
        if map[i][j] == 0 {
            // 안전 영역 배열에 좌표 넣어주기
            safeArea.append([i, j])
        }
    }
}

// 좌표를 돌때 사용
let dx = [-1, 1, 0, 0] // 상하좌우
let dy = [0, 0, -1, 1]


// BFS를 통해서 바이러스 퍼뜨리기

func spreadVirusBFS(map: [[Int]]) -> Int {
    var spreadMap = map
    // 방문 체크용
    var spreadMapCheck = Array(repeating: Array(repeating: false, count: M), count: N)
    
    // 안전 영역 카운트
    var safeAreaCount = 0
    
    // 바이러스를 일단 최대한 퍼뜨리기
    for n in 0..<N {
        for m in 0..<M {
            // 바이러스(2)가 있는 좌표 그리고 아직 방문 체크를 하지 않았다면 - 가능
            if spreadMap[n][m] == 2 && spreadMapCheck[n][m] == false {
                
                // 방문체크 해주기
                spreadMapCheck[n][m] = true
                
                var queue = [[n, m]] // - 완전 탐색
                while !queue.isEmpty {
                    
                    //너비 우선 탐색
                    let fifo = queue.removeFirst()
                    
                    //현재 좌표
                    let x = fifo[1]
                    let y = fifo[0]
                    
                    
                    for i in 0..<4 {
                        let nx = x + dx[i]
                        let ny = y + dy[i]
                        
                        if nx >= 0 && nx < M && ny >= 0 && ny < N {
                            if spreadMapCheck[ny][nx] == false && spreadMap[ny][nx] == 0 {
                                spreadMap[ny][nx] = 2
                                spreadMapCheck[ny][nx] = true
                                
                                queue.append([ny, nx])
                            }
                        }
                    }
                }
            }
        }
    }
    
    
    // 다시 완전 탐색을 하면서 0의 갯수 구하기
    for i in 0..<map.count {
        for j in 0..<map[i].count {
            if spreadMap[i][j] == 0 {
                safeAreaCount += 1
            }
        }
    }
    return safeAreaCount
}


var result = 0

// 지도에 3개의 벽을 세우기

for i in 0..<safeArea.count {
    for j in i+1..<safeArea.count {
        for k in j+1..<safeArea.count {
            // 지도 초기화
            var map = map
            // 지도에 벽 좌표 찍기
            map[safeArea[i][0]][safeArea[i][1]] = 1
            map[safeArea[j][0]][safeArea[j][1]] = 1
            map[safeArea[k][0]][safeArea[k][1]] = 1
            
            // 지도에 바이러스 퍼뜨리기
            let tempResult = spreadVirusBFS(map: map)
            result = max(result, tempResult)
        }
    }
}

print(result)
