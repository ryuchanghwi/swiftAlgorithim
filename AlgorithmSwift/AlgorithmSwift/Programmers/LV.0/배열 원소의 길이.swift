//
//  배열 원소의 길이.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/15.
//

import Foundation
func solution(_ strlist:[String]) -> [Int] {
    return strlist.map { value in
        String(value).count
    }
}
