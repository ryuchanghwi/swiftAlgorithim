//
//  2309.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/23.
//

import Foundation


/*
 1) 7개 수를 더 해서 100을 맞추는 것보다 9개를 다 더하고 2개를 빼서 100을 맞추는게 더 쉬울 것 같은 느낌
 
 2) 모든 키를 다 더해서 넘는 것만큼 찾아내기
    n^2?????
 */

var weightsArray: [Int] = [] // 키를 담을 배열
var weightSum = 0

// 삭제할 두 인덱스
var deletedIndexes = [0, 0]

for _ in 0...8 {
    weightsArray.append(Int(readLine()!)!)
}
weightsArray = weightsArray.sorted()

weightSum = weightsArray.reduce(0, +) - 100

for index in 0..<weightsArray.count {
    let check = weightSum - weightsArray[index]
    for secondIndex in (1 + index)..<weightsArray.count {
        if weightsArray[secondIndex] == check { // 종료 조건 (9명 키 - 100 이 맞는 경우)
            deletedIndexes[0] = index
            deletedIndexes[1] = secondIndex
            break
        }
    }
}
weightsArray.remove(at: deletedIndexes[1]) // 큰걸 먼저 없애야 out of range가 안걸림
weightsArray.remove(at: deletedIndexes[0])

for weight in weightsArray {
    print(weight)
}

//
//import Foundation
//
//var weightsArray: [Int] = []
//var weightSum = 0
//
//for _ in 0..<9 {
//    weightsArray.append(Int(readLine()!)!)
//    weightSum += weightsArray.last!
//}
//
//let targetSum = weightSum - 100
//
//var weightSet = Set<Int>() // Set을 사용하여 O(1) 시간에 값의 존재 여부를 확인
//var indexesToRemove = Set<Int>()
//
//for weight in weightsArray {
//    let complement = targetSum - weight
//    if weightSet.contains(complement) {
//        indexesToRemove.insert(weight)
//        indexesToRemove.insert(complement)
//        break
//    }
//    weightSet.insert(weight)
//}
//
//weightsArray.removeAll { indexesToRemove.contains($0) }
//weightsArray = weightsArray.sorted()
//
//for weight in weightsArray {
//    print(weight)
//}
