//
//  모스부호.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/17.
//

import Foundation
/*
 모스부호
 */
func solution(_ letter:String) -> String {
    let morse = [
        ".-":"a","-...":"b","-.-.":"c","-..":"d",".":"e","..-.":"f",
        "--.":"g","....":"h","..":"i",".---":"j","-.-":"k",".-..":"l",
        "--":"m","-.":"n","---":"o",".--.":"p","--.-":"q",".-.":"r",
        "...":"s","-":"t","..-":"u","...-":"v",".--":"w","-..-":"x",
        "-.--":"y","--..":"z"
    ]
    var result = ""
    var letterValue = letter.components(separatedBy: " ")

    for i in letterValue {
        result += morse[i]!
    }
    return result
}
