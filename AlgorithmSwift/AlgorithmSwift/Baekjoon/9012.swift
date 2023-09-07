//
//  9012.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/06.
//

import Foundation

let count = Int(readLine()!)! // 테스트 갯수

for _ in 0..<count { // 테스트 반복
    var stack = [String]() // 괄호 "("를 넣을 스택
    var result: String = "YES" // 결과값 - 초기 "YES"로 할당
    let ps = readLine()!.map { String($0) } // 입력받은 문자열을 배열로 변환
    for i in ps { //배열을 순회
        if i == "(" { // "("인 경우 스택에 넣기
            stack.append(i)
        }
        else { // ")"인 경우 스택에서 꺼내기
            if stack.isEmpty { // 비어 있다다면 - 짝을 맞울 수 없음
                result = "NO" // "NO"
                break
            }
            else {
                stack.removeLast() // 짝을 맞출 수 있음 "("제거
            }
        }
    }
    
    if result == "NO" { // 이미 불가능 했던 상황 "NO"
        print(result)
    }
    else {
        if !stack.isEmpty { // 비어 있지 않다면 - 짝이 맞지 않기 때문에 "NO"
            print("NO")
        }
        else {
            print("YES") // 비어 있다면 - 짝이 맞다는 얘기 "YES"
        }
    }
}
