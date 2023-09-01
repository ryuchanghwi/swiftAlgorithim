//
//  2583.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/31.
//

import Foundation

//
//let inputData = readLine()!.split(separator: " ").map { Int($0)! } // 첫 줄에 데이터 받기
//
//let m = inputData[0] // M - 세로 값
//let n = inputData[1] // N - 가로 값
//let k = inputData[2] // K - 직사각형 갯수
//
//
//var rectangle = Array(repeating: Array(repeating: false, count: n), count: m) // 직사각형을 만들어 준다. - false는 내부 직사각형이 없는 위치, true는 있음
//
//var check = Array(repeating: Array(repeating: false, count: n), count: m)
//
//
//for _ in 0..<k {
//    let tempRectangle = readLine()!.split(separator: " ").map { Int($0)! } // 직사각형 좌표 [0, 0, 0, 0] - 0번과 1번 인덱스는 좌측 하단, 2번과 3번은 우측 상단
//
//    let left = tempRectangle[0] // 0
//    let bottm = tempRectangle[1] // 2
//    let right = tempRectangle[2] // 4
//    let top = tempRectangle[3] // 4
//
//    for x in left..<right { // x 가 x축
//        for y in bottm..<top { // y 가 y축
//            rectangle[y][x] = true // 직사각형 영역 만들어주기
//        }
//    }
//}
//
//
//// 좌표를 돌때 사용
//let dx = [-1, 1, 0, 0] // 상하좌우
//let dy = [0, 0, -1, 1]
//
//var result = [Int]()
//var count = 0
//
//// 모든 좌표를 돌기
//for height in 0..<m {
//    for width in 0..<n {
//        if rectangle[height][width] == false {
//
//            check[height][width] = true
//            var queue = [[height, width]]
//
//            count += 1
//            while !queue.isEmpty {
//                let fifo = queue.removeFirst()
//                let y = fifo[0]
//                let x = fifo[1]
//
//                for i in 0..<4 {
//                    let nx = x + dx[i]
//                    let ny = y + dy[i]
//                    if nx >= 0 && ny >= 0 && nx < n && ny < m {
//
//                        if rectangle[ny][nx] == false && check[ny][nx] == false {
//                            check[ny][nx] = true
//                            queue.append([ny, nx])
//                        }
//                    }
//                }
//            }
//            print(count, "카운트")
//
//        }
//
//    }
//
//}
//print(count, "zd")


let inputData = readLine()!.split(separator: " ").map { Int($0)! } // 첫 줄에 데이터 받기

let m = inputData[0] // M - 세로 값
let n = inputData[1] // N - 가로 값
let k = inputData[2] // K - 직사각형 갯수


var rectangle = Array(repeating: Array(repeating: 0, count: n), count: m) // 직사각형을 만들어 준다. - 0는 내부 직사각형이 없는 위치, 1는 있음



for _ in 0..<k {
    let tempRectangle = readLine()!.split(separator: " ").map { Int($0)! } // 직사각형 좌표 [0, 0, 0, 0] - 0번과 1번 인덱스는 좌측 하단, 2번과 3번은 우측 상단

    let left = tempRectangle[0] // 0
    let bottm = tempRectangle[1] // 2
    let right = tempRectangle[2] // 4
    let top = tempRectangle[3] // 4

    for x in left..<right { // x 가 x축
        for y in bottm..<top { // y 가 y축
            rectangle[y][x] = 1 // 직사각형 영역 만들어주기
        }
    }
}


// 좌표를 돌때 사용
let dx = [-1, 1, 0, 0] // 상하좌우
let dy = [0, 0, -1, 1]

// dfs
 func dfs(_ x: Int, _ y: Int) {
     for i in 0..<dx.count { // 도달 가능 좌표를 확인하기 위한 for 문
         let nx = x + dx[i]
         let ny = y + dy[i]
         
         if nx >= 0 && ny >= 0 && nx < n && ny < m { // 도달 가능한 좌표 nx, ny가 있어야할 범위 조건
             if rectangle[ny][nx] == 0 { // 도달 가능한 좌표가 측정 대상이면
                 rectangle[ny][nx] = 1 //측정 대상이 아닌 것으로 만들어 버리고
                 count += 1 // 카운트를 함
                 dfs(nx,ny) //재귀함수 - 또 도달 가능하다면 재귀 함수
             }
         }
     }
 }

var result = [Int]()
var count = 0

// 모든 좌표를 돌기
for height in 0..<m {
    for width in 0..<n {

        if rectangle[height][width] == 0 {
            rectangle[height][width] = 1
            count += 1 // 현재 좌표가 가능하다면 카운트
            dfs(width, height) // dfs로 들어가서 새로운 좌표
            result.append(count)
            count = 0
        }
    }
}
print(result.count)
var size: String = ""
for i in result.sorted() {
    size += "\(i) "
}
print(size)
