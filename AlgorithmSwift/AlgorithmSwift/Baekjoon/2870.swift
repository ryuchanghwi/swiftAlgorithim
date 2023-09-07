//
//  2870.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/03.
//

import Foundation


//import Foundation


//let lineCount = Int(readLine()!)!
//
//var tempIntValue = ""
//var arr =  [String]()
//
//for _ in 0..<lineCount {
//    let wordArr = readLine()!.map { String($0) }
//    tempIntValue = ""
//    for i in 0..<wordArr.count {
//        if let value = Int(wordArr[i]) {
//            tempIntValue += String(value)
//        }
//        else {
//            if tempIntValue == "" {
//                continue
//            }
//            arr.append(tempIntValue)
//            tempIntValue = ""
//        }
//    }
//    if tempIntValue != "" {
//        arr.append(tempIntValue)
//    }
//}
//let stringArr = arr.map { Int($0)! }.sorted(by: <)
//for i in stringArr {
//    print(String(i))
//}




//import Foundation
//
//let n = Int(readLine()!)!
//
//var arr: [String] = []
//for _ in 0..<n {
//    let input = readLine()!.split { !$0.isNumber }.map { char -> String in
//        if let num = Int(char) {
//            return String(num)
//        } else {
//            return String(char.drop { $0 == "0" })
//        }
//    }
//    arr.append(contentsOf: input)
//}
//arr.sort { ($0.count, $0) < ($1.count, $1) }
//let stringAr = arr.map { Int($0)! }.sorted(by: <)
//
//for num in arr {
//    print(num)
//}

var n = Int(readLine()!)!
var v = [String]()
var s = ""
var ret = ""

func go() {
    while true {
        if ret.count > 0 && ret.first == "0" {
            ret.removeFirst()
        } else {
            break
        }
    }
    if ret.isEmpty {
        ret = "0"
    }
    v.append(ret)
    ret = ""
}

func cmp(_ a: String, _ b: String) -> Bool {
    if a.count == b.count {
        return a < b
    }
    return a.count < b.count
}

for _ in 0..<n {
    s = readLine()!
    ret = ""
    for char in s {
        if char.isNumber {
            ret += String(char)
        } else if !ret.isEmpty {
            go()
        }
    }
    if !ret.isEmpty {
        go()
    }
}

v.sort(by: cmp)
for i in v {
    print(i)
}
