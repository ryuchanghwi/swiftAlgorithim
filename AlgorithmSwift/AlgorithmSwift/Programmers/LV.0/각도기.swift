//
//  각도기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/12.
//

import Foundation
func solution(_ angle:Int) -> Int {
    switch angle {
    case 0...89:
        return 1
    case 90:
        return 2
    case 91...179:
        return 3
    case 180:
        return 4
    default:
        return 0
    }
}
