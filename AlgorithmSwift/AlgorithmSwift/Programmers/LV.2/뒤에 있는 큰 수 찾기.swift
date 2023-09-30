//
//  뒤에 있는 큰 수 찾기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/30.
//

import Foundation


// MARK: - 테스트코드는 되지만 제출했을 때 안돼
//import Foundation
//
//func solution(_ numbers:[Int]) -> [Int] {
//    var recentValue = 0
//    var biggestValue = 0
//    var result: [Int] = Array(repeating: -1, count: numbers.count)
//    for i in (0..<numbers.count).reversed() {
//        if numbers[i] >= biggestValue {
//            recentValue = numbers[i]
//            biggestValue = numbers[i]
//        }
//        
//        
//        else if numbers[i] >= recentValue && numbers[i] < biggestValue {
//            result[i] = biggestValue
//            recentValue = numbers[i]
//        }
//        else if numbers[i] < recentValue {
//            result[i] = recentValue
//            recentValue = numbers[i]
//        }
//    }
//    return result
//}
import Foundation

func solution(_ numbers:[Int]) -> [Int] {
    var result: [Int] = Array(repeating: -1, count: numbers.count) // 초기 셋팅
    var stack: [(Int, Int)] = [] //스택
    for i in 0..<numbers.count { // for문 돌기
        while !stack.isEmpty && numbers[i] > stack.last!.1 { // 스택이 비워질때까지 && 현재 값이 스택의 값보다 클때까지
            result[stack.removeLast().0] = numbers[i] // 스택의 마지막 값을 빼서 결과 인덱스에 현재 value 넣기
        }
        stack.append((i, numbers[i])) // 현재 값을 스택에 넣기
        print(result, "결과", i)
    }
    return result
}
