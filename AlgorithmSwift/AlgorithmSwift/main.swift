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
 2.예상 대진표 (아직 못품)
 0, 0, 0, A, 0, 0, B, 0 (4, 7) 2 나누기 2, 3.5
 0, A, 0, B (2, 4) 2나누기 1, 2
 A, B (1, 2)
 
 
 0, 0, 0, A, 0, B, 0, 0 (4, 6) 2나누기 2, 3
 0, A, B, 0 (2, 3) 2나누기 1, 1.5
 A, B (1, 2)
 
 0, 0, A, B (3, 4) 2나누기 1.5, 2
 
 
 0, A, B, 0 (2, 3) 2나누기 1, 1.5
 
 */
//func solution(_ n:Int, _ a:Int, _ b:Int) -> Int {
//    var nValue = n
//    var count = 1
//    var aValue : Double = Double(a)
//    var bValue : Double = Double(b)
//    
//    while true {
//        if nValue == 2 {
//            break
//        }
//        else if abs(aValue - bValue) == 0.5 {
//            break
//        }
//        else {
//            nValue /= 2
//            aValue = round(aValue / 2)
//            bValue = round(bValue / 2)
//        }
//        count += 1
//        print(count)
//    }
//    var answer = 0
//
//    return answer
//}


/*
 0. 치킨 쿠폰
 
 100 -> 10
 10 -> 1
 
 result = 108 + 10
 1081 -> 108
 108 -> 10
 10 -> 1
 1 + 8 + 1
 
 */


//func solution(_ chicken:Int) -> Int {
//    var result = 0
//    var rest = 0
//    var chickenCount = chicken
//    var plusCoupon = 0
//    while true {
//        if chickenCount / 10 == 0 {
//            break
//        }
//        rest += chickenCount % 10
//        chickenCount = chickenCount / 10
//        result += chickenCount
//        if chickenCount < 10 {
//            rest += chickenCount
//        }
//        if rest >= 10 {
//            plusCoupon += 1
//            result += 1
//            rest -= 10
//        }
//        if (plusCoupon + rest) / 10 > 0 {
//            result += (plusCoupon + rest) / 10
//        }
//        print(result, rest)
//    }
//    return result
//}


/*
 1.콜라 문제
 */
func solution(_ a:Int, _ b:Int, _ n:Int) -> Int {
    var nValue = n
    var result = 0
    var rest = 0
    var restPlus = 0
    while true {
        if nValue / a == 0 {
            break
        }                   //20, 10, 5, 2
        rest += nValue % a // 0, 0, 1, 0
        nValue = nValue / a //10, 5, 2, 1
        result += nValue // 10 + 5 + 2 + 1
        if nValue < a { // 나머지 1
            rest += nValue //rest + 1 / = 1
        }
        if rest >= a { //2
            restPlus += b
            result += 1
            rest -= a
        }
        var totalRest = restPlus + rest
        if totalRest / a > 0 {
            while true {
                if totalRest / a == 0 {
                    break
                }
                result += totalRest / a
                var test = totalRest / a
                totalRest = test
                if totalRest / a >= a {
                    result += 1
                }
            }

        }
    }

    return result
}


