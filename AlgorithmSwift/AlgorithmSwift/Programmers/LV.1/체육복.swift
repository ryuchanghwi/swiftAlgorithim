//
//  체육복.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/10.
//

import Foundation
func solution(_ n:Int, _ lost:[Int], _ reserve:[Int]) -> Int {

     var studentArray =  Array(repeating: 1, count: n)
    
    for i in lost {
        studentArray[i - 1] -= 1
    }
    for i in reserve {
        studentArray[i - 1] += 1
    }
    for (index, value) in studentArray.enumerated() {
        if value == 0 {
            // 앞에 친구가 빌려주기
            if index > 0 && studentArray[index - 1] == 2 {
                studentArray[index - 1] -= 1
                studentArray[index] += 1
            }
            else if index < n - 1 && studentArray[index + 1] == 2 {
                studentArray[index + 1] -= 1
                studentArray[index] += 1
            }
        }
    }
    
     return studentArray.filter { $0 > 0 }.count
 }
