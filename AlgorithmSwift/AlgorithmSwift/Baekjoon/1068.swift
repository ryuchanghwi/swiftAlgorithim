//
//  1068.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/10.
//

import Foundation

let N = Int(readLine()!)!
let parentNode = readLine()!.split(separator: " ").map { Int($0)! }
let deleteNode = Int(readLine()!)!

var node = [Int: [Int]]()
var start: Int!

// 연결 노드 만들어주기
for i in 0..<parentNode.count {
    if parentNode[i] == -1 {
        start = i
        continue
    }
    // 노드가 이미 있다면
    if node.keys.contains(parentNode[i]) {
        var leafNode = node[parentNode[i]]!
        leafNode.append(i)
        node[parentNode[i]] = leafNode
    }
    // 없다면
    else {
        node[parentNode[i]] = [i]
    }
}

var result = 0
func dfs() {
    var visitedQueue = [Int]()
    visitedQueue.append(deleteNode)
    var stack = [Int]()
    stack = [0]

    while !stack.isEmpty {
        let nowNode = stack.removeLast()
        if visitedQueue.contains(nowNode) {
            continue
        }
        visitedQueue.append(nowNode)

        let leafNode = node[nowNode]
        if leafNode?.count == nil {
            result += 1
        }
        stack += node[nowNode] ?? []
    }
}

if parentNode[deleteNode] == -1 {
    print(0)
}
else {
    dfs()
    print(result)
}









let n = Int(readLine()!)!
var start: Int!
let parentNode = readLine()!.split(separator: " ").map { Int($0)! }
var childNode: [[Int]] = Array(repeating: [], count: n)
let target = Int(readLine()!)!
var result = 0

for i in 0..<parentNode.count {
  if parentNode[i] == -1 {
    start = i
    continue
  }
  childNode[parentNode[i]].append(i)
}

func solution() {
  if parentNode[target] == -1 {
    print(0)
    return
  } else {
    childNode[parentNode[target]].removeAll { $0 == target }
  }
  dfs(start: start)
  print(result)
}

func dfs(start: Int) {
  if childNode[start].count == 0 {
    result += 1
    return
  }

  for next in childNode[start] {
    dfs(start: next)
  }
}

solution()
