//
//  카펫.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/08/10.
//

import Foundation
// yellow 로 만들 수 있는 사각형 탐색 (1)
// 배열에 들어있는 경우의 수로 brown을 충족할 수 있는지 확인

func solution(_ brown:Int, _ yellow:Int) -> [Int] {
    
    var yellowArray = [[Int]]()
    for i in 1...(yellow) {
        var tempArray = [Int]()
        if yellow % i == 0 {
            tempArray.append(i)
            tempArray.append(yellow / i)
            tempArray = tempArray.sorted(by: >)
            if yellowArray.contains(tempArray) {
                continue
            }
            else {
                  yellowArray.append(tempArray)
            }
        }
    }
    
    // 결과
    var result = [Int]()
    
    for i in 0..<yellowArray.count {
        // yellowArray[i][0]
        // yellowArray[i][1]
        print(yellowArray[i][0])
        print(yellowArray[i][1])
        let width = yellowArray[i][0]
        let length = yellowArray[i][1]
        
        if width * 2 + length * 2 + 4 == brown {
            result.append(width + 2)
            result.append(length + 2)
            break
        }
    }
    
    return result
}
