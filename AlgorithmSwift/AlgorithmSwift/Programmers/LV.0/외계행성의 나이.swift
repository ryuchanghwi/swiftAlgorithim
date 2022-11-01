//
//  외계행성의 나이.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/01.
//
//외계행성의 나이
import Foundation
func solution(_ age:Int) -> String {
    var result = ""
    let intTuple = [("0", "a"), ("1", "b"), ("2", "c"), ("3", "d"),("4", "e"), ("5", "f"), ("6", "g"),("7", "h"), ("8", "i"), ("9", "j")]
    for i in Array(String(age)) {
        for j in intTuple {
            if String(i) == j.0 {
                result += j.1
            }
        }
    }
    return result
}
