//
//  문자열 내 p와 y의 개수 .swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/14.
//

import Foundation
//func solution(_ s:String) -> Bool
//{
//    let pCount = s.map { value in
//        String(value).lowercased()
//    }.filter { value in
//        value == "p"
//    }.count
//    let yCount = s.map { value in
//        String(value).lowercased()
//    }.filter { value in
//        value == "y"
//    }.count
//    return pCount == yCount ? true : false
//}

//다른 풀이
func solution(_ s:String) -> Bool
{
    return s.lowercased().filter{( $0 == "p")}.count == s.lowercased().filter({$0 == "y"}).count ? true : false
}
