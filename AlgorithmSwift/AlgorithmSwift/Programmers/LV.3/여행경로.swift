//
//  여행경로.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/23.
//

import Foundation
//func solution(_ tickets:[[String]]) -> [String] {
//
//    var ticketsDic = [String: [String]]()
//    // var ticketsCheckDic = [String: Bool]()
//
//    for i in 0..<tickets.count {
//        if !ticketsDic.keys.contains(tickets[i][0]) {
//            ticketsDic[tickets[i][0]] = [tickets[i][1]]
//        }
//        else {
//            var tempArray = ticketsDic[tickets[i][0]]!
//            tempArray.append(tickets[i][1])
//            ticketsDic[tickets[i][0]] = tempArray.sorted()
//        }
//
//    }
//    // print(ticketsCheckDic)
//    print(ticketsDic)
//
//    var result = [String]()
//    result.append("ICN") // 항상 인천에서 출발
//
//
//    func bfs(city: String) {
//        var rootNode = city // 출발지
//        let nowNode = ticketsDic[rootNode] // 도착지들
//        var queue = [String]()
//        queue = nowNode!
//
//        while !queue.isEmpty {
//            print(queue, "????????")
//            let fifo = queue.removeFirst() // 큐에서 하나 뽑기
//
//            // 큐에서 하나 뽑은 시점에 큐가 비어 있는지 확인
//            if queue.isEmpty {
//                result.append(fifo)
//                ticketsDic[rootNode] = nil // 방문체크
//                rootNode = fifo
//                if ticketsDic.keys.contains(rootNode) {
//                    queue = ticketsDic[rootNode]!
//                }
//            }
//            else {
//                ticketsDic[rootNode] = queue // 방문 체크
//                if ticketsDic.keys.contains(fifo) {
//                    result.append(fifo)
//                    queue = ticketsDic[fifo]!
//                }
//            }
//
//        }
//    }
//
//    bfs(city: "ICN")
//
//    return result
//}
//solution([["ICN", "SFO"], ["ICN", "ATL"], ["SFO", "ATL"], ["ATL", "ICN"], ["ATL","SFO"]])

func solution(_ tickets:[[String]]) -> [String] {
    // 도착지를 기준으로 알파벳 순서로 정렬한다.
    let tickets = tickets.sorted { $0[1] < $1[1] }
    // 티켓의 사용여부를 기록
    var visited = [Bool](repeating: false, count: tickets.count)
    
    // 결과 값
    var result: [String] = []
    
    //dfs
    func dfs(start: String) {
        // 현재 방문한 도시 수가 티켓 수와 같다면 지금 도착한 곳이 마지막 여행지
        if result.count == tickets.count {
            result.append(start)
            return
        }
        for i in 0..<tickets.count {
            if tickets[i][0] == start && !visited[i] {
                visited[i] = true // 방문체크
                result.append(start)
                dfs(start: tickets[i][1])
                // 정답을 이미 구했다면 return
                if result.count == tickets.count + 1 {
                    return
                }
                result.removeLast()
                visited[i] = false
            }
        }
    }
    
    // 시작은 항상 "ICN"이라고 문제에서 주어짐
    dfs(start: "ICN")
    
    return result
}
