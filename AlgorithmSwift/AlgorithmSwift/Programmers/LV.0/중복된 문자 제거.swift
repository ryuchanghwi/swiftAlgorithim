//
//  중복된 문자 제거.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/05.
//

import Foundation
/*
 LV0. 중복된 문자 제거
 사용해 볼 수 있는 방법
 1. 빈 배열을 만들고 for문을 통해 하나씩 문자를 넣는다.
 my_string의 element이 새로 만들었던 배열에 포함되었다면 그 element를 지운다.
 */


func solution(_ my_string:String) -> String {
    //중복되는 element를 확인하기 위한 배열
    var overlapCheckArray = [String]()
    //결과 String
    var result = ""
    //my_string을 배열로
    let myStringArray = my_string.map { value in
        String(value)
    }
    //myString배열을 순회
    for i in myStringArray {
        // i값이 겹치는지 확인하는 배열에 포함되어 있지 않으면
        // result 값에 추가
        if !overlapCheckArray.contains(i) {
            result += i
        }
        //겹치는지 확인하는 배열에 i를 추가
        overlapCheckArray.append(i)
        /*
         result = peo /그 다음 "p"인 순간 overlapCheckArray에 "p"가 있기 떄문에 포함 되지 않음
         overalapCheckArray ["p", "e", "o",
         */
    }
    return result
}
