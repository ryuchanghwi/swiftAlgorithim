//
//  숫자 문자열과 영단어.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/09.
//

import Foundation

enum Number: String, CaseIterable {
    case zero
    case one
    case two
    case three
    case four
    case five
    case six
    case seven
    case eight
    case nine
    
    func replaceInt() -> String {
        switch self {
        case .zero:
            return "0"
        case .one:
            return "1"
        case .two:
            return "2"
        case .three:
            return "3"
        case .four:
            return "4"
        case .five:
            return "5"
        case .six:
            return "6"
        case .seven:
            return "7"
        case .eight:
            return "8"
        case .nine:
            return "9"
        }
    }
}

func solution(_ s: String) -> Int {
    var result = s
    for number in Number.allCases {
        print(number.rawValue)
        if result.contains(number.rawValue) {
            result = result.replacingOccurrences(of: String(number.rawValue), with: String(number.replaceInt()))
            print(result)
        }
    }
    print(result)
    return Int(result)!
}
