//
//  2636.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/08.
//

import Foundation
let inputData = readLine()!.split(separator: " ").map { Int($0)! }

let N = inputData[0] //세로 - 가장자리는 치즈가 없기 때문에 제외
let M = inputData[1] //가로 - 가장자리는 치즈가 없기 떄문에 제외


var square = [[Int]]() // 정사각형 틀

for _ in 0..<N {
    let arr = readLine()!.split(separator: " ").map { Int($0)! }
    square.append(arr) //치즈 좌표 대입

}

// 좌표를 돌때 사용
let dx = [-1, 1, 0, 0] // 상하좌우
let dy = [0, 0, -1, 1]


var meltCheeseHistory = [Int]() // 치즈가 녹은 카운트 저장

// 치즈 녹이기
func bfs() -> Int {
    var count = 0
    // 방문 체크용
    var tempSquareValueCheck = Array(repeating: Array(repeating: false, count: M), count: N)
    
    var queue: [[Int]] = [[0, 0]] // 0, 0 부터 순회 - 연구소 문제는 좌표를 완전탐색 했지만 이 문제는 겉 면이 0이기 때문에 자연스럽게 완전탐색이 가능!!! 이러한 차이 떄매 for문으로 완탐 ㄴㄴ
    
    while !queue.isEmpty { // bfs
        let fifo = queue.removeFirst()
        
        let x = fifo[0]
        let y = fifo[1]
        
        for i in 0..<4 { // 방문 가능한 지역 모두 찾기
            
            let nx = x + dx[i]
            let ny = y + dy[i]
            
            if nx >= 0 && ny >= 0 && nx < N && ny < M { // 방문 가능 지역 조건
                if tempSquareValueCheck[nx][ny] == false && square[nx][ny] == 0 { // 방문하지 않고 0이라면
                    tempSquareValueCheck[nx][ny] = true // 방문처리하고 queue에 넣기
                    queue.append([nx, ny])
                }
                else if tempSquareValueCheck[nx][ny] == false && square[nx][ny] == 1 { //방문하지 않고 1이라면
                    tempSquareValueCheck[nx][ny] = true // 방문처리하고
                    square[nx][ny] = 0 // 0으로 바꿔주기(치즈 녹이기)
                    count += 1 //녹인 치즈 개수 카운트
                }
            }
            
        }
    }
    meltCheeseHistory.append(count) // 녹인 치즈 내역에 저장
    return count
}



while true { // 모든 치즈가 다 녹을 떄까지 실행
    if bfs() == 0 { //녹인 치즈가 없다면 stop - 모든 치즈가 다 녹았다는 의미
        break
    }
}

print(meltCheeseHistory.count - 1) // 녹인 치즈가 0개인 것까지 배열에 들어가기 때문에 count - 1
print(meltCheeseHistory[meltCheeseHistory.count - 2]) //인덱스는 count - 2
