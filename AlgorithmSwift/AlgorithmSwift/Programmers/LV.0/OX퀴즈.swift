//
//  OX퀴즈.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/27.
//

import Foundation
//func solution(_ quiz:[String]) -> [String] {
//    var intArray = [Int]()
//    for i in quiz {
//        i.map { value in
//            let calc = Int(String(value)) ?? nil
//            if calc != nil {
//                intArray.append(calc!)
//            }
//        }
//    }
//    print(intArray)
//    return []
//}
//
//func solution(_ quiz:[String]) -> [String] {
//    var resultArray = [String]()
//    var quizValue = quiz.map { value in
//        String(value).components(separatedBy: " ")
//    }
//    for i in quizValue {
//        if i.contains("+") {
//            if Int(i[0])! + Int(i[2])! == Int(i.last!)! {
//                resultArray.append("O")
//            }
//            else {
//                resultArray.append("X")
//            }
//        }
//        else {
//            if Int(i[0])! - Int(i[2])! == Int(i.last!)! {
//                resultArray.append("O")
//            }
//            else {
//                resultArray.append("X")
//            }
//        }
//    }
//    return resultArray
//}
func solution(_ quiz:[String]) -> [String] {
    var resultArray = [String]()
    var quizValue = quiz.map { value in
        // " "을 기준으로 나눌 수 있는 메서드
        String(value).components(separatedBy: " ")
    }
    for i in quizValue {
        i.contains("+") ? Int(i[0])! + Int(i[2])! == Int(i.last!)! ? resultArray.append("O") : resultArray.append("X") : Int(i[0])! - Int(i[2])! == Int(i.last!)! ? resultArray.append("O") : resultArray.append("X")
    }
    return resultArray
}
