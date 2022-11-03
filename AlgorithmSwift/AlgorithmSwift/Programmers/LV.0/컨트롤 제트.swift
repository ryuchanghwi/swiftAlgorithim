//
//  컨트롤 제트.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/31.
//

import Foundation

/*
 이 코드가 안됐던 이유
 일반적인 컨트롤 Z(되돌리기)를 생각했을 때,
 컨트롤 Z가 몇개를 누르던 숫자를 되돌려야함
 ex) 1 2 3 4 5 Z Z Z Z -> 1
 현재의 코드는 Z가 연속해서 몇개가 올 지 모르기 때문에 맞지 않는 코드
 
 따라서
 베열 안에 문자(숫자, Z)를 넣고 Z가 나오면 Z와 숫자를 모두 지워주는 방식으로 풀어야함
 */

//func solution(_ s:String) -> Int {
//    var sum = 0
//    var minus = 0
//    var index = 0
//    var sArray = s.components(separatedBy:  " ")
//    for i in sArray {
//        //숫자인 경우
//        if Int(i) != nil {
//            sum += Int(i)!
//        }
//        //"Z"인 경우
//        else if Int(i) == nil{
//            //"Z" 이전이 "Z"가 아닌 경우
//            if Int(sArray[index - 1]) != nil {
//                minus += Int(sArray[index - 1])!
//            }
//        }
//        index += 1
//    }
//    return sum - minus
//}
//


func solution(_ s:String) -> Int {
    //숫자 or Z를 담을 배열
    var sumArray = [String]()
    var aArray = s.components(separatedBy: " ")
    for i in aArray {
        //배열에 값 추가
        sumArray.append(i)
        //Z인 경우
        if i == "Z" {
            //배열에 추가된 Z제거
            sumArray.removeLast()
            //Z이전의 값 제거
            sumArray.removeLast()
        }
    }
    return sumArray.map { value in
        //Int로 형 변환
        Int(value)!
        //더하기
    }.reduce(0, +)
}
