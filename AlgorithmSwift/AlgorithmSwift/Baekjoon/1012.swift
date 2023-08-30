//
//  1012.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/30.
//

import Foundation

let n = Int(readLine()!)!

for _ in 0..<n {
    let inputData = readLine()!.split(separator: " ").map { Int($0)! }
    let m = inputData[0] // 가로 길이
    let n = inputData[1] // 세로 길이
    let k = inputData[2] // 배추 갯수
    
    let dx = [-1, 1, 0, 0] // 상하좌우
    let dy = [0, 0, -1, 1]
    

    // 배추밭 만들기
    var arr = Array(repeating: Array(repeating: 0, count: m), count: n)
    
    // 배추밭을 검사했는지 확인하기 위한 bool 값 배열
    var check = Array(repeating: Array(repeating: false, count: m), count: n)
    
    for _ in 0..<k {
        let location = readLine()!.split(separator: " ").map { Int($0)! }
        let tempM = location[0]
        let tempN = location[1]
        
        // 배추밭에 배추가 심어져 있는 위치 1로 표시
        arr[tempN][tempM] = 1
    }


    // 결과
    var result = 0
    
    // 모든 땅을 검사해야 함 - 떨어져 있는 것의 갯수를 파악하기 위해서
    for height in 0..<n {
        for width in 0..<m {
            // 1 발견 - (배추가 심어져 있어야함, 방문하지 않았어야 함)
            if arr[height][width] == 1 && check[height][width] == false {
                
                // 카운트
                result += 1
                
                // 시작점
                var queue = [[height, width]]
                
                // 반복문
                while !queue.isEmpty {
                    
                    // 너비 우선 탐색?
                    let fifo = queue.removeFirst()
                    
                    // 현재 좌표
                    let x = fifo[0]
                    let y = fifo[1]
                    
                    // 도달 가능 좌표
                    for i in 0..<4 {
                        let nx = x + dx[i]
                        let ny = y + dy[i]
                        
                        // range를 벗어나면 안돼 - 0보다 커야함, 갯수보다 작아야함
                        if nx >= 0 && ny >= 0 && nx < n && ny < m {
                            
                            // 도달 가능 좌표 역시 방문하지 않아야 하고, 배추가 있어야 함
                            if check[nx][ny] == false && arr[nx][ny] == 1 {
                                check[nx][ny] = true
                                queue.append([nx, ny])
                                
                            }
                        }
                    }
                }
                
            }
        }
    }
    print(result)
}

