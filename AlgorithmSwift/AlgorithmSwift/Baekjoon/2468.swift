//
//  2468.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/31.
//

import Foundation

let length = Int(readLine()!)! // 안전 영역 길이

var safeArea = [[Int]]() // 안전 영역을 만들기 위한 이중 배열

let dx = [-1, 1, 0, 0] // 상하좌우
let dy = [0, 0, -1, 1]

/*
 안전 영역에 물 높이가 최솟값과 최댓값의 영역을 벗어나면 결과는 같을 것이라고 생각해서
 최솟값과 최댓값을 만들고 그 안에서만 구하려는 의도로 만듦
 */
var maxValue = 1 // 문제에서 높이는 1이상 100이하의 정수
var minValue = 100

// 길이만큼 반복해서 안전영역 이중배열을 완성시킴 + 최댓값과 최솟값 구하기
for _ in 0..<length {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    maxValue = max(maxValue, line.max()!)
    minValue = min(minValue, line.min()!)
    safeArea.append(line)
}


func bfs(safeAreaValue: [[Int]]) -> Int {
    var check = Array(repeating: Array(repeating: false, count: length), count: length) // 방문 체크용 배열
    var count = 0 // 안전 영역 갯수
    for height in 0..<length { // 모든 영역을 순회
        for width in 0..<length {
            if safeAreaValue[height][width] > 0 && check[height][width] == false { // 안전 영역이고 방문을 하지 않았다면
                // 카운트
                count += 1 // 카운트 + 1

                var queue = [[height, width]] // 높이와 너비를 담을 큐

                while !queue.isEmpty { // 큐가 완전히 빌 때까지

                    // 너비 우선 탐색?
                    let fifo = queue.removeFirst()

                    // 현재 좌표
                    let x = fifo[1]
                    let y = fifo[0]
                    
                    
                    for i in 0..<4 {
                        let nx = x + dx[i]
                        let ny = y + dy[i]
                        
                        if nx >= 0 && ny >= 0 && nx < length && ny < length {
                            
                            if check[ny][nx] == false && safeAreaValue[ny][nx] > 0 {
                                check[ny][nx] = true
                                queue.append([ny, nx])
                            }
                        }
                    }
                    
                }


            }
        }
    }
    return count
}


//print(bfs(safeAreaValue: [[1, 1], [1, 1]]), "??")
/*
 처음 result 변수의 초기값을 0으로 만들었음(무의식)
 하지만 문제가 풀리지 않고 해설을 찾아보니
 가령 모든 안전영역의 높이가 같을 때의 결과는 1
 그치만 결과는 0이 나옴 때문에 초깃값을 1로 수정
 */
var result = 1


for value in minValue...maxValue {
    var tempSaveArea = safeArea
    for len in 0..<length {
        tempSaveArea[len] = safeArea[len].map { $0 - value }
    }
    result = max(bfs(safeAreaValue: tempSaveArea), result)
}
print(result)


// dfs - 영역
// bfs - 최소 거리
