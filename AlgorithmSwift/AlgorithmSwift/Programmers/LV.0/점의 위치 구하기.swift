//
//  점의 위치 구하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/15.
//

import Foundation
func solution(_ dot:[Int]) -> Int {
    var result = 0
    if dot[0] > 0 {
        if dot[1] > 0 {
            //1사분면
            result = 1
        }
        else {
            //4사분면
            result = 4
        }
    }
    else {
        if dot[1] > 0 {
            //2사분면
            result = 2
        }
        else {
            result = 3
        }
    }
    return result
}
//다른 사람 코드
//switch, tuple 사용
//func solution(_ dot:[Int]) -> Int {
//    var result = 0
//    switch (dot[0], dot[1]) {
//    case (0..., 0...):
//        result = 1
//    case (...0, 0...):
//        result = 2
//    case (...0, ...0):
//        result = 3
//    case (0..., ...0):
//        result = 4
//    default:
//        result = 0
//    }
//    return result
//}
