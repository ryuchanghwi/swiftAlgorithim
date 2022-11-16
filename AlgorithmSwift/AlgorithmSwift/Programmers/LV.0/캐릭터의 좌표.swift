//
//  캐릭터의 좌표.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/11/16.
//

import Foundation
func solution(_ keyinput:[String], _ board:[Int]) -> [Int] {
    let heightBoundary = board[1] == 1 ? 1 : board[1] / 2 //높이 최대 갈 수 있는 값
    let widthBoundary = board[0] == 1 ? 1 : board[0] / 2 //너비 최대 갈 수 있는 값
    var upDownValue = 0
    var leftRightValue = 0
    for i in keyinput {
        if i == "left" && abs(leftRightValue - 1) <= widthBoundary {
            leftRightValue -= 1
        }
        else if i == "right" && abs(leftRightValue + 1) <= widthBoundary {
            leftRightValue += 1
        }
        else if i == "up" && abs(upDownValue + 1) <= heightBoundary {
            upDownValue += 1
        }
        else if i == "down" && abs(upDownValue - 1) <= heightBoundary {
            upDownValue -= 1
        }
    }

    return [leftRightValue, upDownValue]
}
