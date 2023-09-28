//
//  피로도.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/28.
//
import Foundation

func solution(_ k:Int, _ dungeons:[[Int]]) -> Int {
    var check = Array(repeating: false, count: dungeons.count) // 방문 체크
    var total = 0 // 결과 값


    func DFS(currentK: Int, currentCount: Int) {
        if currentCount >= 0 { // 현재 카운트가 0보다 커진다면 최댓값만을 가지고 있기
            total = max(total, currentCount)
        }

        for i in 0..<dungeons.count {
            if check[i] == false && currentK >= dungeons[i][0] { // 방문체크하지 않고 던전에 들어갈 수 있다면
                check[i] = true // 방문체크
                DFS(currentK: currentK - dungeons[i][1], currentCount: currentCount + 1)
                check[i] = false
            }
        }

    }
    DFS(currentK: k, currentCount: total)

    return total
}

