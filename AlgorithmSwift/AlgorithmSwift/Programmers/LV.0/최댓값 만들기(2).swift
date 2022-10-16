//
//  최댓값 만들기(2).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/17.
//

import Foundation
//배열을 정렬
//첫번째 * 두번째 인덱스와 마지막 -1 마지막 인덱스의 곱을 비교
func solution(_ numbers:[Int]) -> Int {
    let numbersCount = numbers.count
    let sortedNumbers = numbers.sorted()
    let firstCase = sortedNumbers[0] * sortedNumbers[1]
    let secondCase = sortedNumbers[numbersCount - 2] * sortedNumbers[numbersCount - 1]
    return firstCase > secondCase ? firstCase : secondCase
}
