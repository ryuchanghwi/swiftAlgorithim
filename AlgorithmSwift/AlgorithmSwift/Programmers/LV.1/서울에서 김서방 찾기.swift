//
//  서울에서 김서방 찾기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/05.
//

import Foundation
/*
 Lv.1 서울에서 김서방 찾기
 배열에서 "Kim"이라는 element가 몇 번째 index인지 찾는 문제
 사용해 볼 수 있는 방법
 1. lastIndex(of: )
 2. firstIndex(of: )
 3. for문을 돌리며 contains
 */


//lastIndex(of:) 사용 O(n)
func solution(_ seoul:[String]) -> String {
    //김서방의 위치를 알아내는 변수
    let index = seoul.lastIndex(of: "Kim")! //반드시 "Kim"은 있기 때문에 강제 언레핑 ! 사용
    return "김서방은 \(index)에 있다"
}


//firstIndex(of: )사용 O(n)
//func solution(_ seoul:[String]) -> String {
//    //김서방의 위치를 알아내는 변수
//    let index = seoul.firstIndex(of: "Kim")! //반드시 존재하기 때문에 강제 언레핑 ! 사용
//    return "김서방은 \(index)에 있다."
//}

//for문, contains tkdyd O(n)??
//func solution(_ seoul:[String]) -> String {
//    var index = 0
//    for i in seoul {
//        if i.contains("Kim") {
//            break
//        }
//        index += 1
//    }
//    return "김서방은 \(index)에 있다"
//}
