//
//  피보나치 수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/21.
//

import Foundation
func solution(_ n:Int) -> Int {
    var saveFibonacci: [Int: Int] = [:] // 딕셔너리를 활용
    
    func fibonacci(_ num: Int) -> Int {
        if let hasData = saveFibonacci[num] { //딕셔너리에 값이 있는 피보나치 수라면 가져다가 쓰기!
            return hasData
        }
        
        if num == 0 {
            return 0
        }
        else if num == 1 {
            return 1
        }
        else {
            let result = fibonacci(num - 1) + fibonacci(num - 2)
            saveFibonacci[num] = result // 값을 딕셔너리에 저장
            return result % 1234567
        }
    }
    
    return fibonacci(n)
}
