//
//  수박수박수박수박수박수?.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/15.
//

import Foundation
/*
 수박수박수박수박수박?
 */
func solution(_ n:Int) -> String {
    let watermelonCount = n / 2
    return n == 1 ? "수" : n > 1 && n % 2 == 1 ? String(repeating: "수박", count: watermelonCount)+"수" : String(repeating: "수박", count: watermelonCount)
}

//func solution(_ n:Int) -> String {
//    return (0..<n).map{($0%2==0 ? "수":"박")}.reduce("", +)
//}
