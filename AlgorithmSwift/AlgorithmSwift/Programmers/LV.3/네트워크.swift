//
//  네트워크.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/19.
//

import Foundation

func solution(_ n:Int, _ computers:[[Int]]) -> Int {
    var check = Array(repeating: false, count: n) // 방문 체크용 배열
    check.insert(true, at: 0) // 1번째 인덱스부터 사용하기 위해 0번째 인덱스에 임의로 값 채우기
    var nodeArray = [[Int]]() // 인덱스(각 노드)에 연결되어 있는 인덱스 표시 - 2중 배열
    nodeArray.append([])
    
    for i in 0..<computers.count { // 반복문을 통해 각 인덱스에 연결된 노드들 저장
        var tempNodeArray = [Int]()
        for j in 0..<computers[i].count {
            if computers[i][j] == 1  {
                if i + 1 != j + 1{
                    tempNodeArray.append(j + 1)
                }
            }
        }
        nodeArray.append(tempNodeArray)
    }
    
    func bfs(node: Int) { // BFS
        var queue = [Int]()
        check[node] = true // 방문체크 해주기
        queue.append(node) // queue에 집어 넣기
        
        while !queue.isEmpty { // 반복문
            let fifo = queue.removeFirst() // 첫번째를 꺼낸다. queue
            for i in nodeArray[fifo] { // 꺼낸 값을 nodeArray의 인덱스로 접근해서 연결된 노드 찾기
                if check[i] == false { // 연결된 노드가 방문 체크를 하지 않았다면
                    check[i] = true // 방문 체크 해주기
                    queue.append(i) // 큐에 넣기
                }
            }
        }
        
    }
    var count = 0
    for i in 1...computers.count {
        if check[i] == false { //아직 방문 체크를 하지 않은 노드라면
            bfs(node: i) // bfs에 넣기
            count += 1 //카운트 해주기 - 연결된 모든 노드를 돌때 카운트 1
        }
    }
    return count
}
