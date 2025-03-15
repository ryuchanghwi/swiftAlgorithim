//
//  1159(농구경기).swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 3/14/25.
//

import Foundation


let playerCount = Int(readLine()!)!

var nameDictionary: [String: Int] = [:]


for i in 0..<playerCount {
    let name = String(readLine()!)
    let firstString = String(name.map { $0 }.first!)
    
    if nameDictionary.keys.contains(firstString) {
        nameDictionary[firstString] = nameDictionary[firstString]! + 1
    } else {
        nameDictionary[firstString] = 1
    }
}

var result: String = ""

for (key, value) in nameDictionary {
    if value >= 5 {
        result += key
    }
}
print(result.isEmpty ? "PREDAJA" : String(result.sorted())) // Array -> String
