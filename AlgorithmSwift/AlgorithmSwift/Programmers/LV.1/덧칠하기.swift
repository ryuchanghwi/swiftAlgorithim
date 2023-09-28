//
//  덧칠하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/28.
//

import Foundation


// MARK: - 시간 초과
//import Foundation
//func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
//    var check = Array(repeating: true, count: n + 1)
//    for i in 0..<n+1 {
//        if section.contains(i) {
//            check[i] = false
//        }
//    }
//    var count = 0
//    for i in 0..<check.count {
//        if check[i] == false {
//            count += 1
//            for j in 0..<m {
//                if i + j < check.count {
//                    if check[i + j] == false {
//                                            check[i + j] = true
//                    }
//                }
//            }
//        }
//    }
//
//
//    return count
//}
//
import Foundation

func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
    var check = 0
    var start = 0
    var count = 0
    for i in section {
        if start == 0 {
            start = i
            count += 1
        }
        else {
            if start + m <= i {
                start = i
                count += 1
            }
        }
    }
    return count
}
