//
//  1992.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/01.
//

import Foundation


//import Foundation
//
//let lineCount = Int(readLine()!)! // 트리의 라인 카운트
//
//var tree = [[Int]]() //쿼드 트리 배열
//
//for _ in 0..<lineCount {
//    let line = readLine()!.map { Int(String($0))! } // 라인
//    tree.append(line) //tree에 라인 추가
//}
//
//func check(_ length: Int, _ x: Int, _ y: Int) -> Bool { // 범위 내에서 체크를 해서 하나라도 틀리면 false
//    for i in x..<length+x {
//        for j in y..<length+y {
//            if tree[x][y] != tree[i][j] {
//
//                return false
//            }
//        }
//    }
//    return true // 모두 같다면 true
//}
//
//var result = ""
//
//func quadTree(_ lineCount: Int, _ x: Int, _ y: Int) {
//    if check(lineCount, x, y) {
//        result += "\(tree[x][y])"
//        return
//    }
//    let w = lineCount / 2
//    result += "("
//    for i in 0..<2 {
//        for j in 0..<2 {
//            quadTree(x + i * w, y + j * w, w)
//        }
//    }
//    result += ")"
//}
//
//
//quadTree(lineCount, 0, 0)
//print(result)

import Foundation

let n = Int(readLine()!)!
var board = [[Int]]()
for _ in 0..<n {
    board.append(readLine()!.map { Int(String($0))! })
}

var result = ""

func check(_ x: Int, _ y: Int, _ width: Int) -> Bool {
    for i in x..<x+width {
        for j in y..<y+width {
            if board[x][y] != board[i][j] {
                return false
            }
        }
    }
    return true
}

func quadTree(_ x: Int, _ y: Int, _ n: Int) {
    if check(x, y, n) {
        result += "\(board[x][y])"
        return
    }
    let w = n / 2
    result += "("
    for i in 0..<2 {
        for j in 0..<2 {
            quadTree(x + i * w, y + j * w, w)
        }
    }
    result += ")"
}

quadTree(0, 0, n)
print(result)
