//
//  main.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/08.
//

let inputData = readLine()!.split(separator: " ").map { Int($0)! } // 첫 줄 받기

let N = inputData[0] // 스크린의 칸
let M = inputData[1] // 바구니의 칸(너비)

let appleCount = Int(readLine()!)! // 떨어지는 사과 갯수


/*
너비에 따라서 만든 바구니
 */
var basket = Array(1...M)

var result = 0 // 결과 값

for _ in 0..<appleCount {
    let location = Int(readLine()!)! //떨어지는 사과의 위치
    
    while !basket.contains(location) {
        result += 1 // 이동에 따른 카운트
        // 우측으로 이동해야 하는 경우
        if basket.max()! < location {
            basket = basket.map { $0 + 1 } // 바구니를 값을 전체적으로 + 1로 해서 이동
        }
        // 좌측으로 이동해야 하는 경우
        else if basket.min()! > location {
            basket = basket.map { $0 - 1 } // 바구니를 값을 전체적으로 - 1로 해서 이동
        }
    }
}
print(result)
