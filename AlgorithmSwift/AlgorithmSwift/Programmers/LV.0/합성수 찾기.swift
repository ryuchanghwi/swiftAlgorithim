//
//  합성수 찾기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/04.
//

import Foundation
/*
 합성수 찾기
 약수를 찾는 방법..?
 
 */

//func solution(_ n:Int) -> Int {
//    //n이 주어질 떄 1부터 n까지 반복하기 위한 배열
//    let nArray = (1...n)
//    //결과값
//    var result = 0
//    //약수를 세기 위한 값
//    var count = 0
//    //1부터 n까지 순회하며 각 값이 약수를 가지는지 확인
//    for i in nArray {
//        //각 값이 약수를 가지는가
//        for j in 1...i {
//            //나머지가 0이면 j는 i의 약수
//            if i % j == 0 {
//                //약수의 개수 세기
//                count += 1
//                //약수의 개수가 3개 이상이면
//                if count >= 3 {
//                    //결과의 1을 추가하고 다음 값으로 넘어감
//                    result += 1
//                    break
//                }
//            }
//        }
//        count = 0
//    }
//    return result
//}
func solution(_ n:Int) -> Int {
    return (1...n).filter { n in
        (1...n).filter { value in
            n % value == 0
        }.count >= 3 ? true : false
    }.count
}
