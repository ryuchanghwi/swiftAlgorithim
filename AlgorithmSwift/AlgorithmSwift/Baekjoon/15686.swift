//
//  15686.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/11.
//

import Foundation



let input = readLine()!.split(separator: " ").map { Int($0)! }

let N = input[0] // N * N 크기의 동네
let M = input[1] // 남겨야할 치킨 집 갯수

var city = [[Int]]() // 도시 좌표 - 1 집, 2 치킨 집
var houseLocation = [[Int]]() // 도시 좌표
var chickenHouseLocation = [[Int]]() //치킨 집 좌표

for _ in 0..<N {
    let line = readLine()!.split(separator: " ").map { Int($0)! }
    city.append(line)
}



for 세로 in 0..<city.count {
    for 가로 in 0..<city[세로].count {
        if city[세로][가로] == 2 {
            chickenHouseLocation.append([세로, 가로])
        }
        else if city[세로][가로] == 1 {
            houseLocation.append([세로, 가로])
        }
    }
}



/*
 집 마다 가장 가까운 치킨 집 저장
 M개 일때 모든 경우를 다 비교해서 최솟값 구하기
 */

var MCase = M
var chickenCase = [[[Int]]]()
var tempChickenCase = [[Int]]()
var visited = Array(repeating: false, count: chickenHouseLocation.count)

func pickN(pickNum: Int, start: Int) {
    if pickNum == 0 {
        chickenCase.append(tempChickenCase)
        return
    }
    
    for i in start..<chickenHouseLocation.count {
        if visited[i] == true {
            continue
        }
        visited[i] = true
        tempChickenCase.append(chickenHouseLocation[i])
        pickN(pickNum: pickNum - 1, start: i + 1)
        tempChickenCase.removeLast()
        visited[i] = false
        
    }
    
}

pickN(pickNum: M, start: 0)


// 집과 치킨집의 거리를 구하는 식
func calcDistance(chicken: [Int], house: [Int]) -> Int {
    return abs(chicken[0] - house[0]) + abs(chicken[1] - house[1])
}

var distanceHistory = [Int]() // 케이스마다 결과를 저장

var minDistanceDic = [[Int]: Int]() //치킨집과 집의 거리 중 최소를 저장

for i in 0..<houseLocation.count {
    minDistanceDic[houseLocation[i]] = 100 //최댓값으로 우선 세팅
}


var tempMinDic = minDistanceDic // 순회할 때 다시 초기화 시켜주기 위해서 따로 변수로 할당

// 다른 케이스들을 도는 for문
for i in 0..<chickenCase.count {
    // 다른 치킨집 위치로 초기화 되기 때문에 최소 위치도 초기화
    tempMinDic = minDistanceDic
    // 같은 케이스 안에 어떤 치킨집인지를 도는 for문
    for j in 0..<chickenCase[i].count {
        print(chickenCase[i][j], "치킨")
        
        // 치킨 집 중 집이랑 더 가까운 곳 거리 찾기
        for h in 0..<houseLocation.count {
            print(houseLocation[h], "집")
            let distance = calcDistance(chicken: chickenCase[i][j], house: houseLocation[h])
            if tempMinDic[houseLocation[h]]! > distance {
                tempMinDic[houseLocation[h]]! = distance
            }
        }
        print(tempMinDic, "민 딕셔너리")
        distanceHistory.append(tempMinDic.values.reduce(0, +))
    }
}

print(distanceHistory.min()!)
