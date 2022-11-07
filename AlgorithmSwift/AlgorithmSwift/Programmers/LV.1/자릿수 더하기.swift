//
//  자릿수 더하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/07.
//

import Foundation
/*
 LV.1 자릿수 더하기
 */
//func solution(_ n:Int) -> Int
//{
//    var nArray = String(n).map { value in
//        String(value)
//    }.map { value in
//        Int(value)!
//    }.reduce(0, +)
//    return nArray
//}
func solution(_ n:Int) -> Int
{
    return String(n).map{( Int(String($0))! )}.reduce(0, +)
}
