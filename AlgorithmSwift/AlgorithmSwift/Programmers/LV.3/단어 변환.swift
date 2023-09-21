//
//  단어 변환.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/22.
//

import Foundation


//import Foundation
//
//func solution(_ begin:String, _ target:String, _ words:[String]) -> Int {
//    var wordsArray = [[String]]()
//    var targetWordCount = target.map { String($0) }.count
//
//
//    for i in 0..<words.count {
//        wordsArray.append(words[i].map { String($0) })
//    }
//    var check = Array(repeating: false, count: words.count)
//    var count = 0
//    var can = true
//    func bfs() -> Int {
//        var queue = [[String]]()
//        var beginWord = begin.map { String($0) }
//        queue.append(beginWord)
//
//        while !queue.isEmpty {
//
//            let fifo = queue.removeFirst()
//
//            if queue.contains(target.map({ String($0) })) {
//                print("일치", count, "카운트")
//                return count
//            }
//
//
//             var checkWords = Array(repeating: Array(repeating: false, count: targetWordCount), count: words.count)
//            for i in 0..<fifo.count {
//                for j in 0..<checkWords.count {
//                    if fifo[i] == wordsArray[j][i] {
//                        checkWords[j][i] = true
//                    }
//                }
//            }
//            var tempWordArray = [[String]]()
//            for i in 0..<checkWords.count {
//                if checkWords[i].filter({ $0 == true }).count == 2 {
//                    if check[i] == false {
//                        check[i] = true
//                        tempWordArray.append(wordsArray[i])
//                        print(wordsArray[i], "들어가는 녀석")
//                    }
//                }
//
//            }
//            queue = tempWordArray
//            count += 1
//        }
//        return 0
//    }
//    return bfs()
//}

func solution(_ begin: String, _ target: String, _ words: [String]) -> Int {
    var answer = 0 // 결과 값
    var queue = [(String, Int)]() // 단어와 깊이
    queue.append((begin, 0))
    var visited = [Bool](repeating: false, count: words.count) // 방문 노드 여부 확인 배열
    
    while !queue.isEmpty { //bfs
        let (word, cnt) = queue.removeFirst() // 큐에서 뺴온 단어와 깊이
        
        if word == target { // 단어가 일치할 시 종료 조건
            answer = cnt
            break
        }
        
        for i in 0..<words.count { // 변환할 수 있는 단어를 순회
            var tempCnt = 0
            
            if !visited[i] { // 방문체크가 되어 있지 않은 단어라면?
                // 그 단어가 words 속 단어와 다를 때 한 자씩 비교해서 더하기
                for j in 0..<word.count { //다르면 카운트
                    if word[word.index(word.startIndex, offsetBy: j)] != words[i][words[i].index(words[i].startIndex, offsetBy: j)] {
                        tempCnt += 1
                    }
                }
                
                if tempCnt == 1 { // 만약 다른 글자 개수가 1개라면
                    queue.append((words[i], cnt + 1))
                    visited[i] = true //방문체크
                }
            }
        }
    }
    
    return answer
}
