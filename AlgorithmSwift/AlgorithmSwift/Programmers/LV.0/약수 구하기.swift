//
//  약수 구하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/22.
//

import Foundation
/*
 약수 구하기
 
 주어진 n만큼 순회하며 나머지가 없을 경우 배열에 추가
 */
//func solution(_ n:Int) -> [Int] {
//    //1부터 주어진 n까지의 배열
//    let array = (1...n)
//    //결과 배열
//    var result = [Int]()
//    //1부터 n까지 순회하며 n으로 나눴을 시 나머지가 0이 되는 경우 결과 배열에 추가
//    for i in array {
//        if n % i == 0 {
//            result.append(i)
//        }
//    }
//    return result
//}

//고차함수 filter을 사용한 풀이
func solution(_ n:Int) -> [Int] {
    return (1...n).filter { value in
        n % value == 0
    }
}
