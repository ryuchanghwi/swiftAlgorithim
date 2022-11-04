//
//  인덱스 바꾸기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/31.
//

import Foundation

func solution(_ my_string:String, _ num1:Int, _ num2:Int) -> String {
    var stringArray = my_string.map { value in
        String(value)
    }
    let num1Value = stringArray[num1]
    let num2Value = stringArray[num2]
    stringArray[num1] = num2Value
    stringArray[num2] = num1Value
    return stringArray.reduce("", +)
}
