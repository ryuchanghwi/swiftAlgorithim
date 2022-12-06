//
//  이상한 문자 만들기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/12/06.
//

import Foundation

/*
 1.이상한 문자 만들기
 */
func solution(_ s:String) -> String {
    let sArray = s.components(separatedBy: " ").map { value in
        String(value)
    }
    var arrayValue = [[String]]()
    print(sArray)
    for i in sArray {
        arrayValue.append(i.map { value in
            String(value)
        })
    }
    var result = ""
    for i in 0..<arrayValue.count {
        
        for j in 0..<arrayValue[i].count {
            if j % 2 == 0 {
                 result += arrayValue[i][j].uppercased()
            }
            else {
                result += arrayValue[i][j].lowercased()
            }
        }
        if i != arrayValue.count - 1 {
            result += " "
        }
    }

    return result
}
