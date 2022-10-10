//
//  양꼬치.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/10.
//

import Foundation
func solution(_ n:Int, _ k:Int) -> Int {
    let service = n / 10
    let result = n * 12000 + (k - service) * 2000
    return result
}
