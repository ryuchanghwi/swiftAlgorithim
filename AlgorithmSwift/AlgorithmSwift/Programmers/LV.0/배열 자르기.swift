//
//  배열 자르기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/21.
//

import Foundation
func solution(_ numbers:[Int], _ num1:Int, _ num2:Int) -> [Int] {
    //결과를 제출할 배열
    var array = [Int]()
    //num1부터 num2까지 반복하며 해당 인덱스를 배열안에 넣어줌
    for i in num1...num2 {
        array.append(numbers[i])
    }
    return array
}
