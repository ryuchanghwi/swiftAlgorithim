//
//  기사단원의 무기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/28.
//

import Foundation


// MARK: - 시간초과

//func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
//    var powerArray = [Int]()
//    
//    func powerCalc(_ value: Int) -> Int {
//        var count = 0
//        var returnValue = 0
//        for i in 1...value {
//            if value % i == 0 {
//                count += 1
//            }
//        }
//        if count > limit {
//            returnValue = power
//        }
//        else {
//            returnValue = count
//        }
//        return returnValue
//    }
//    
//    for i in 1...number {
//        powerArray.append(powerCalc(i))
//    }
//    
//    return powerArray.reduce(0, +)
//}
func solution(_ number:Int, _ limit:Int, _ power:Int) -> Int {
    var powerArray = [Int]()
    
    func powerCalc(_ value: Int) -> Int {
        var count = 0
        var returnValue = 0
        for i in 1...Int(sqrt(Double(value))) { //sqrt 제곱근
            if value % i == 0 { //약수가 되는 시점
                if (i * i) == value { // 자기 자신을 곱해서 value가 나오면 + 1 ex) 4 * 4 = 16
                    count += 1
                }
                else {
                    count += 2 // 2 * 6 = 16 이기 때문에 2만 알아도 2개의 약수가 있다는 것을 알 수 있음
                }
            }
        }
        if count > limit {
            returnValue = power
        }
        else {
            returnValue = count
        }
        return returnValue
    }
    
    for i in 1...number {
        powerArray.append(powerCalc(i))
    }
    
    return powerArray.reduce(0, +)
}
