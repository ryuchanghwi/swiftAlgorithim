//
//  2178.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/30.
//

import Foundation

let inputData = readLine()!.split(separator: " ").map { Int($0)! }

let n = inputData[0]
let m = inputData[1]

var maze = [[Int]]()

for _ in 0..<n {
    let line = readLine()!.map { Int(String($0))! }
    maze.append(line)
}
let directionX = [0, 0, -1, 1] // 상 하 좌 우
let directionY = [-1, 1, 0, 0] // 상 하 좌 우

// 거리
var distance: [[Int]] = Array(repeating: Array(repeating: 0, count: m), count: n)

// 방문 체크
var visited: [[Bool]] = Array(repeating: Array(repeating: false, count: m), count: n)

func bfs() {
    // 시작
    distance[0][0] = 1
    visited[0][0] = true

    var queue: [[Int]] = [[0, 0]]

    while !queue.isEmpty {
        let fifo = queue.removeFirst() // 첫 번째 인덱스를 제거하고 그 제거 값을 할당

        let x = fifo[0] // 제거된 x
        let y = fifo[1] // 제거된 y

        for i in 0..<4 {

            // 현재 값을 기준으로 닿을 수 있는 값들에 접근
            let nx = x + directionX[i]
            let ny = y + directionY[i]

            // nx 가 0보다 크거나 같아야 함 (범위를 벗어나면 안돼)
            // ny 가 0보다 크거나 같아야 함
            // nx 가 width보다 작아야함(0번째 인덱스 부터라서)
            // ny 가 height보다 작아야함

            if nx >= 0 && ny >= 0 && nx < n && ny < m {

                // 방문 한 곳이 아니여야 하고, 방문할 수 있는 곳이어야 함

                if visited[nx][ny] == false && maze[nx][ny] == 1 {
                    distance[nx][ny] = distance[x][y] + 1
                    visited[nx][ny] = true
                    queue.append([nx, ny])
                }
            }
        }
    }
}
bfs()
print(distance[n-1][m-1])


//let inputData = readLine()!.split(separator: " ").map { Int($0)! }
//
//let n = inputData[0] //너비
//let m = inputData[1] //높이
//
//// 미로 만들기
//var maze = [[Int]]()
//
//for _ in 1...n {
//    let line = readLine()!.split(separator: " ").map { Int($0)! }
//    maze.append(line)
//}
//
//// 방문 체크 배열 만들기
//var check = Array(repeating: Array(repeating: false, count: m), count: n)
//
//// 거리 배열 만들기
//var distance = Array(repeating: Array(repeating: 0, count: m), count: n)
//
//let dx = [-1, 1, 0, 0] // 상하좌우
//let dy = [0, 0, -1, 1]
//
//func bfs() {
//    
//    // 초기 세팅
//    distance[0][0] = 1
//    check[0][0] = true
//    
//    var queue : [[Int]] = [[0, 0]]
//    
//    while !queue.isEmpty {
//        
//        let fifo = queue.removeFirst()
//        
//        // 현재 좌표
//        let x = fifo[0]
//        let y = fifo[1]
//        
//        // 도달 가능한 좌표
//        for i in 1...n {
//            let nx = dx[i] + x
//            let ny = dy[i] + y
//            
//            // 조건문 도달 가능
//            if nx >= 0 && ny >= 0 && nx < n && ny < m {
//                
//                if check[nx][ny] == false && maze[nx][ny] == 1 {
//                    distance[nx][ny] = distance[x][y] + 1
//                    check[nx][ny] = true
//                    queue.append([nx, ny])
//                }
//            }
//        }
//    }
//}
//bfs()
//print(distance[n-1][m-1])
