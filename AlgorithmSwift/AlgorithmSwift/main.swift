//
//  main.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/08.
//

import Foundation
/*
 10 0= 1 - 2 0
 10 1= 10 - 2 1
 10 2=100 - 2 2 ->
 10 3= 1000 - 2 3
 10 4 =10000 - 2 4
 10 5 =100000 - 2 5
 
 11 + 11 = 22 -> 7 + 7 = 
 */
//func solution(_ bin1:String, _ bin2:String) -> String {
//
//    var bin1Value = Int(bin1)!
//    var number1 = 0
//    var digit1 = bin1.count //자릿수 체크
//    print(digit1)
//    var bin2Value = Int(bin2)
//    var digit2 = bin2.count //자릿수 체크
//    for i in 1...digit1 {
////        //1일 경우
////        if bin1Value % Int(pow(10.0, Float(i)))! != 0 {
////
////        }
//        if bin1Value % Int(pow(10.0, Float(i)))! == 1 {
//
//        }
//        //10일 경우
//    }
//
//    print(digit2)
//    return ""
//}
//print(pow(10, 1))
//for i in 1...4 {
//    var k = pow(10, i)
//    if 100 % Int(k) == 0 {
//
//    }
//    print(k)
//}
/*
 10 11  -> 1
 */

/*
 10 + 11 = 21 = 10제곱2 + 1
 
 1001 + 1111 = 2112 -> 
 */
//func solution(_ bin1:String, _ bin2:String) -> String {
//    var bin1Value = Int(bin1)!
//    var bin2Value = Int(bin2)!
//    var biggerDigit = bin1.count >= bin2.count ? bin1.count : bin2.count
//    for i in 1...biggerDigit {
//        if 10
//    }
//    return ""
//}
//func solution(_ bin1:String, _ bin2:String) -> String {
//    var sum = Int(bin1)! + Int(bin2)!
//    var StringSum = String(sum)
//    var reversedSum = String(StringSum.reversed())
//    print(reversedSum)
//    var arraySum = reversedSum.map { value in
//        String(value)
//    }
//    arraySum.append("0")
//    var index = 0
//    for i in arraySum {
//        if i == "2" {
//            arraySum[index] = "0"
//            arraySum[index + 1] = String(1 + Int(arraySum[index + 1])!)
//            print(arraySum[index + 1])
//        }
//        else if i == "3" {
//            arraySum[index] = "1"
//            arraySum[index + 1] = String(1 + Int(arraySum[index + 1])!)
//        }
//        index += 1
//    }
//    print(arraySum)
//    return ""
//}
//func solution(_ bin1:String, _ bin2:String) -> String {
//    var intBin1 = Int(bin1)!
//    var intBin2 = Int(bin2)!
//    var intSumValue = String(intBin1 + intBin2).map { value in
//        String(value)
//    }.map { value in
//        Int(value)!
//    } //reversed하기
//    intSumValue.append(0)
//    var index = 0
//    var resultArray = intSumValue
//    for i in intSumValue {
//        if i >= 2 {
//            resultArray[index] -= 2
//            resultArray[index + 1] += 1
//        }
//        index += 1
//    }
//    print(intSumValue)
//    print(resultArray)
//
//    return ""
//}
//func solution(_ numbers:[Int]) -> [Int] {
//    var plusSet = Set<Int>()
//    var index = 0
//    let numbersLastIndex = numbers.count - 1
//    for i in numbers {
//        print(i)
////        print(numbers[index + 1])
//        for j in numbers[(index + 1)...numbersLastIndex] {
//            plusSet.insert(i + j)
//        }
//        print(numbers[index + 1])
//        index += 1
//    }
////    print(plusSet)
//    return []
//}





// MARK: - 여기부터



//다른 사람 풀이
//func solution(_ phone_number:String) -> String {
//    return String("\(String(repeating: "*", count: phone_number.count - 4))\(phone_number.suffix(4))")
//}


/*
 1.나누어 떨어지는 숫자 배열
 */
//func solution(_ arr:[Int], _ divisor:Int) -> [Int] {
//    var result = arr.filter { value in
//        value %  divisor == 0
//    }.sorted()
//    return result.count == 0 ? [-1] : result
//}
/*
 1.제일 작은 수 제거하기
 */
//func solution(_ arr:[Int]) -> [Int] {
//    let miniumValue = arr.sorted()[0]
//    let miniumIndex = Int(arr.firstIndex { $0 == miniumValue }!)
//    var arrValue = arr
//    arrValue.remove(at: miniumIndex)
//    return arrValue.count == 0 ? [-1] : arrValue
//}


/*
 없는 숫자 더하기
 */

//func solution(_ numbers:[Int]) -> Int {
//    return (0...9).reduce(0, +) - numbers.reduce(0, +)
//}

/*
 1. 가운데 글자 가져오기
 */
//func solution(_ s:String) -> String {
//    let sCount = s.count
//    // 5일떄는 2, 7일떄는 3... s / 2 인덱스?
//    // 4일떄는 1,2 6일때는 2,3 8일떄는 34 s / 2 -1, s/2
//    let sArray = s.map { value in
//        String(value)
//    }
//    return sCount % 2 == 0 ? sArray[sCount / 2 - 1]+sArray[sCount / 2] : sArray[sCount / 2]
//}
//다른 사람 풀이
//func solution(_ s:String) -> String {
//    if Array(s).count % 2 == 0 {
//        return String(Array(s)[(s.count/2)-1...(s.count/2)])
//    }else{
//        return String(Array(s)[s.count/2])
//    }
//}


/*
 2.최댓값과 최솟값
 */
//func solution(_ s:String) -> String {
//    let minValue = s.components(separatedBy: " ").map { value in
//        Int(value)!
//    }.min()!
//    let maxValue = s.components(separatedBy: " ").map { value in
//        Int(value)!
//    }.max()!
//    return "\(minValue) \(maxValue)"
//}
