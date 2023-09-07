//
//  4949.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/07.
//

import Foundation
var input = ""


while true {

    var stack = [Character]()
    input = readLine()!
    if input == "." {
        break
    }
    var result = "yes"
    for i in input {
        if i == "[" {
            stack.append(i)
        }
        else if i == "(" {
            stack.append(i)
        }



        else if i == "]" {
            if stack.isEmpty || stack.last! != "[" {
                result = "no"
                break
            }
            stack.removeLast()
        }
        else if i == ")" {
            if stack.isEmpty || stack.last! != "(" {
                result = "no"
                break
            }
            stack.removeLast()
        }

    }

    if result == "no" {
        print(result)

    }
    else {
        if stack.isEmpty {
            print("yes")
        }
        else {
            print("no")
        }
    }
}

//import Foundation
//
//var input = ""
//
//while true {
//    input = readLine()!
//    if input == "." { break }
//    var stack = [Character]()
//    var check = true
//
//    for i in input {
//        if i == "[" || i == "(" { stack.append(i) }
//        else if i == "]" || i == ")" {
//            if stack.isEmpty { check = false; break }
//            if i == "]" && stack.removeLast() != "[" { check = false; break }
//            else if i == ")" && stack.removeLast() != "(" { check = false; break }
//        }
//    }
//
//    if check == false { print("no") }
//    else {
//        if !stack.isEmpty { print("no") }
//        else {print("yes")}
//    }
//}
