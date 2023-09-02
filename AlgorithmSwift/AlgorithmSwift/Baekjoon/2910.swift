//
//  2910.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/01.
//

import Foundation


//let inputData = readLine()!.split(separator: " ").map { Int($0)! } // 첫 줄 입력
//
//let N = inputData[0] // 메세지의 길이
//let C = inputData[1] // N 수열의 숫자들은 C보다 작거나 같음  C를 왜 줬을까???
//
//let arr = readLine()!.split(separator: " ").map { Int($0)! }
//
//var dic: [Int: Int] = [:]
//
//print(arr)
//
//for i in 0..<arr.count {
//
//    if dic.keys.contains(arr[i]) {
//        dic[arr[i]]! += 1
//    }
//    else {
//        dic[arr[i]] = 1
//    }
//}
//
//
//let sortedDic = dic.sorted { $0.value > $1.value }
//var result = [Int]()
//
//for (key, value) in sortedDic {
//    if dic.filter({ $0.value == value }).count == 1 {
//        result += Array(repeating: key, count: value)
//    }
//    else if dic.filter({ $0.value == value }).count > 1 {
//        let tempDic = dic.filter({ $0.value == value })
//        for j in 0..<arr.count {
//            for i in tempDic {
//                if result.contains(i.key) {
//                    continue
//                }
//                else if arr[j] == i.key {
//                    result += Array(repeating: i.key, count: i.value)
//                }
//            }
//        }
//    }
//}
//print(result.map{ String($0) }.joined(separator: " "))
//


// MARK: - 2트
 
//let inputData = readLine()!.split(separator: " ").map { Int($0)! } // 첫 줄 입력
//
//let N = inputData[0] // 메세지의 길이
//let C = inputData[1] // N 수열의 숫자들은 C보다 작거나 같음  C를 왜 줬을까???
//
//let arr = readLine()!.split(separator: " ").map { Int($0)! }
//
//var dic: [Int: [Int]] = [:] // 문자와 문자들의 인덱스를 넣을 딕셔너리
//
//
//for i in 0..<arr.count { // 반복을 하면서
//
//    if dic.keys.contains(arr[i]) { // 딕셔너리에 키 값에는 숫자와 벨류에는 인덱스 저장
//        dic[arr[i]]!.append(i)
//    }
//    else {
//        dic[arr[i]] = [i]
//    }
//}
//
//// 딕셔너리 정렬 - 벨류 [Int]의 카운트가 많은 수대로
//let sortedDic = dic.sorted { $0.value.count > $1.value.count }
//var result = "" // 결과 담을 배열
//
//for (key, value) in sortedDic { //정렬 딕셔너리 순회
//    if dic.filter({ $0.value.count == value.count }).count == 1 { // 값은 카운트가 하나라면
//        // 그냥 추가
//        result += String(repeating: "\(key) ", count: value.count)
//    }
//    // 같은 카운트가 여러개 라면
//    else if dic.filter({ $0.value.count == value.count }).count > 1 {
//        // 다시 정렬 - 첫 번쨰 인덱스가 빠른 수대로 정렬
//        let tempDic = dic.filter({ $0.value.count == value.count }).sorted(by: { $0.value[0] < $1.value[0] })
//        // 결과 배열에 없는 경우에만 추가
//        for i in tempDic {
//            if !result.contains("\(key)") {
//
//                result += String(repeating: "\(i.key) ", count: i.value.count)
//            }
//        }
//    }
//}
//// 근데 답 틀림...
//
//print(result)
//


// fq: 빈도, v: 값, s: 순서
//typealias Count = (fq: Int, v: Int, s: Int)

let input = readLine()!.split(separator: " ").map { Int(String($0))! }
let n = input[0]
let c = input[1]
var nums = readLine()!.split(separator: " ").map { Int(String($0))! }
var counter = [Int: [Int]]() // value의 [0]: 빈도, [1]: 순서

var i = 0
nums.forEach {
    if counter.keys.contains($0) {
        counter[$0]![0] += 1
    } else {
        counter[$0] = [1, i]
        i += 1
    }
}

print(counter, "카운터")

var resultNums = [(fq: Int, v: Int, s: Int)]()
var res = ""

for i in counter {
    resultNums.append((i.value[0], i.key, i.value[1]))
}
print(resultNums, "정렬 전")
resultNums.sort { $0.fq == $1.fq ? $0.s < $1.s : $0.fq > $1.fq }
print(resultNums)
resultNums.forEach {
    res += String(repeating: "\($0.v) ", count: $0.fq)
}

print(res)
