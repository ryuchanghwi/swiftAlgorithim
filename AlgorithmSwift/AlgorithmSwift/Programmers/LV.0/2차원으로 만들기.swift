//
//  2차원으로 만들기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/21.
//

import Foundation
/*
 2차원 배열이기 때문에 어렵게 느껴지는 문제
 1차원으로 생각하기
 1, 2, 3, 4, 5, 6, 7, 8을 2개씩 배열 안에 담기..?
 1. 반복문 활용
 2. n개씩 배열에 넣기
 3. 배열이 n개 찾다면 2차원 배열에 넣어주고 1차원 배열 다시 비워주기
 */
func solution(_ num_list:[Int], _ n:Int) -> [[Int]] {
    //2차원 배열
    var twoDemensionArray = [[Int]]()
    //1차원 배열
    var oneDemensionArray = [Int]()
    //n개씩 자르기 위한 count 변수
    var count = 0
    for i in num_list {
        //배열 안에 int값을 1차원 배열에 넣는다.
        oneDemensionArray.append(i)
        //n개 전까지 +1 해준다.
        count += 1
        //1차원 배열에 n개 만큼 담은 경우
        if count == n {
            //1차원 배열을 2차원 배열에 넣는다.
            twoDemensionArray.append(oneDemensionArray)
            //1차원 배열에 새로운 값을 넣어주기 위해 비워준다.
            oneDemensionArray = []
            //다시 n개만큼 담아주기 위해 count를 0으로 만든다.
            count = 0
        }
    }
    return twoDemensionArray
}
