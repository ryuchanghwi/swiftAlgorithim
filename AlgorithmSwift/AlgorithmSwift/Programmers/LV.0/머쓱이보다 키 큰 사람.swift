//
//  머쓱이보다 키 큰 사람.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/12.
//

import Foundation
func solution(_ array:[Int], _ height:Int) -> Int {
    let result = array.filter { value in
        value > height
    }.count
    return result
}
