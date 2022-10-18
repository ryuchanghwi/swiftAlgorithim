//
//  k의 개수.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/18.
//

import Foundation
//int 타입을 string타입으로 바꿔서 특정 k가 몇개 들어가는지 카운트한다.
import Foundation
func solution(_ i:Int, _ j:Int, _ k:Int) -> Int {
    //i부터 j까지의 array를 만든다.
    let reuslt = (i...j)
        //map을 이용해 string Array로 바꾼다.
        .map { value in
        String(value)
        }
        //reduce를 이용해 하나의 문자열로 합친다.
        .reduce("", +)
        .filter { value in
            String(value).contains(String(k))
        }.count
        //filter를 이용해 특정 문자열이 들어간 개수를 구한다.
    return reuslt
}
