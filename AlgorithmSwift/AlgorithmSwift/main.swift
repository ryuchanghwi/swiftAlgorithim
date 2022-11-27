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

/*
 정수 내림차순으로 배치하기
 */
//func solution(_ n:Int64) -> Int64 {
//    var result = ""
//    let nArray = String(n).map { value in
//        String(value)
//    }.map { value in
//        Int(value)!
//    }.sorted(by: >)
//
//    for i in nArray {
//        result += String(i)
//    }
//    return Int64(result)!
//}

//다른 사람 풀이
//func solution(_ n:Int64) -> Int64 {
//    return Int64(String(Array(String(n)).sorted { $0 > $1 }))!
//}


/*
 0.가까운 수
 */
//func solution(_ array:[Int], _ n:Int) -> Int {
//    let minusArray = array.map { value in
//        value - n
//    }
//    print(minusArray)
//    var arrayDic = [Int: Int]()
//    for i in 0..<array.count {
//        arrayDic.updateValue(minusArray[i], forKey: array[i])
//    }
//    print(arrayDic)
//    return 0
//}

/*
 1.문자열 다루기 기본

 */

//func solution(_ s:String) -> Bool {
//    let numArray = ["0", "1", "2", "3", "4", "5", "6", "7", "8", "9"]
//    let resultCount = s.filter { value in
//        numArray.contains(String(value))
//    }.count
//    return s.count == resultCount && (resultCount == 4 || resultCount == 6) ? true : false
//}

//func solution(_ s:String) -> Bool {
//    return (Int(s) != nil && (s.count == 4 || s.count == 6)) ? true : false
//}

/*
 0.한 번만 등장한 문자
 */
func solution(_ s:String) -> String {
    var sArray = Array(s.sorted())
    let sArrayCount = sArray.count
    var compareArray = [String]()
    var result = ""
    print(sArray)
    for i in sArray {
        if !compareArray.contains(String(i)) {
            result += String(i)
        }
        compareArray.append(String(i))
        if 
    }
    return result
}
