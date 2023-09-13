//
//  4179.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/13.
//

import Foundation

//let input = readLine()!.split(separator: " ").map { Int($0)! }
//
//let R = input[0] // 행
//let C = input[1] // 열
//
////지훈이 위치
//var JLocation = [Int]()
//
////불 위치
//var FLocation = [Int]()
//
//
////미로 만들기
//var maze = [[String]]()
//
//for i in 0..<R {
//    let line = readLine()!.map { String($0) }
//    maze.append(line)
//
//    for j in 0..<C {
//        if maze[i][j] == "J" {
//            JLocation = [i, j]
//        }
//        else if maze[i][j] == "F" {
//            FLocation = [i, j]
//        }
//    }
//}
//
////탈출 가능 좌표 구하기
//var escapingLocation = [[Int]]()
//
//
//let dx = [1, -1, 0, 0]
//let dy = [0, 0, -1, 1]
//
//for i in 0..<maze.count {
//    for j in 0..<maze[i].count {
//        if (i == 0 || j == 0) || (i == maze.count - 1 || j == maze[i].count - 1) {
//            escapingLocation.append([i, j])
//            if maze[i][j] == "#" {
////                print(i, j ,"아이제이")
//                escapingLocation.removeLast()
//            }
//        }
//    }
//}
//
////print(escapingLocation, "?도망")
//
//func bfs() -> Int {
//
//    var count = 1
//
//    var checkArray = Array(repeating: Array(repeating: false, count: C), count: R)
//
//    var fQueue = [[Int]]()
//    fQueue.append(FLocation)
//
//    var jQueue = [[Int]]()
//    jQueue.append(JLocation)
//
////    print(fQueue, jQueue, "큐")
//
//
//    while !fQueue.isEmpty && !jQueue.isEmpty  {
//        let fFifo = fQueue.removeFirst()
//
//        let fY = fFifo[0]
//        let fX = fFifo[1]
//
//        checkArray[fY][fX] = true
//
//
//        for i in 0..<4 {
//            let ny = fY + dy[i]
//            let nx = fX + dx[i]
//
//            if nx >= 0 && ny >= 0 && nx < C && ny < R {
//                if checkArray[ny][nx] == false && (maze[ny][nx] == "." || maze[ny][nx] == "J") {
//                    checkArray[ny][nx] = true
//                    fQueue.append([ny, nx])
//                    maze[ny][nx] = "F"
//                }
//            }
//        }
//
//        let jFifo = jQueue.removeFirst()
//
//        let jY = jFifo[0]
//        let jX = jFifo[1]
//
//        checkArray[jY][jX] = true
//
//        for i in 0..<4 {
//            let ny = jY + dy[i]
//            let nx = jX + dx[i]
//
//            if nx >= 0 && ny >= 0 && nx < C && ny < R {
//                if checkArray[ny][nx] == false && maze[ny][nx] == "." {
//                    checkArray[ny][nx] = true
//                    jQueue.append([ny, nx])
//                    maze[ny][nx] = "J"
//                }
//            }
//        }
//
////        print(maze, "??")
//        var stop = false
//        for i in 0..<escapingLocation.count {
//            if maze[escapingLocation[i][0]][escapingLocation[i][1]] == "J" {
//                stop = true
//            }
//        }
//        count += 1
////        print(count, "카운트")
////        print(maze, "지도")
//        if stop {
//            break
//        }
//    }
//
//    var impossibleCheck = false
//    for i in 0..<escapingLocation.count {
//        if maze[escapingLocation[i][0]][escapingLocation[i][1]] != "J" {
//            impossibleCheck = false
//        }
//        else if maze[escapingLocation[i][0]][escapingLocation[i][1]] == "J" {
//            impossibleCheck = true
//            break
//        }
//    }
//
//    return impossibleCheck == false ? 0 : count
////    return count
//}
////print(escapingLocation, "???????")
//if escapingLocation.contains(JLocation) {
//    print(1)
//}
//else if R == 1 && C == 1 {
//    print("IMPOSSIBLE")
//}
//else {
//    let result = bfs()
//    if result == 0 {
//        print("IMPOSSIBLE")
//    }
//    else {
//        print(result)
//    }
//}
//

/*
 예외 조건
 1. R, C가 1일떄 불가
 2. 바로 탈출가능
 */



import Foundation

let dx = [0,0,-1,1]
let dy = [1,-1,0,0]

// 불을 퍼트리는 함수
func bfsFire() {
    var index = 0
    
    while fires.count > index {
        let (x,y,cnt) = fires[index]
        index += 1
        
        for i in 0..<4 {
            let (nx, ny) = (x + dx[i], y + dy[i])
            
            guard (0..<r) ~= nx && (0..<c) ~= ny else { continue } // ~= 범위 연산자 표시, 0이상 r 미만
            guard graph[nx][ny] != "#" && fireGraph[nx][ny] > cnt + 1 else { continue }
            
            fireGraph[nx][ny] = cnt + 1 //불이 퍼지는 그래프에 퍼지는 순서 표시
            fires.append((nx,ny,cnt+1)) // 불이 퍼진 좌표와 순서 표시
        }
    }
}

// 미로 길찾기 함수
func bfs() {
    var queue = [(sx,sy,0)]
    var index = 0
    visit[sx][sy] = true
    
    while queue.count > index {
        let (x,y,cnt) = queue[index]
        index += 1
        
        for i in 0..<4 {
            let (nx, ny) = (x + dx[i], y + dy[i])
            
            // 미로 탈출하면 결과 출력
            guard (0..<r) ~= nx && (0..<c) ~= ny else {
                print(cnt + 1)
                return
            }
            
            // 벽이 아니고, 불이 붙지 않은 곳이고, 방문하지 않은 곳이라면 이동 한다
            guard graph[nx][ny] != "#" && fireGraph[nx][ny] > cnt + 1 && !visit[nx][ny] else {
                continue
            }
            
            visit[nx][ny] = true
            queue.append((nx,ny,cnt+1))
        }
    }
    
    print("IMPOSSIBLE")
}

let T = readLine()!.components(separatedBy: " ").map {Int($0)!}
let (r, c) = (T[0], T[1]) // 행 렬

var graph = [[Character]]() // 지도
var fireGraph = Array(repeating: Array(repeating: Int.max, count: c), count: r)
var visit = Array(repeating: Array(repeating: false, count: c), count: r)

// 시작위치
var sx: Int = 0, sy: Int = 0
var fires: [(x: Int, y: Int, cnt: Int)] = [] //

for i in 0..<r {
    let input = Array(readLine()!)
    graph.append(input)
    
    for j in 0..<c {
        if input[j] == "J" {
            (sx, sy) = (i, j)
            graph[i][j] = "."
        } else if input[j] == "F" {
            fires.append((i,j,0))
            fireGraph[i][j] = 0
        }
    }
}

bfsFire()
bfs()
