import Foundation

//func solution(_ land:[[Int]]) -> Int{
//    var answer = 0
//    var history: [Int] = Array(repeating: 0, count: 4)
//
//    for index in 0..<land.count {
//        var tmpSums: [Int] = history
//        for i in 0..<4 {
//            if index == 0 {
//                history[i] = land[index][i]
//            }
//            else {
//                for j in 0..<4 {
//                    if i != j {
//                        tmpSums[i] = max(tmpSums[i], land[index][i] + history[j])
//                    }
//                }
//            }
//        }
//
//        history = tmpSums
//    }
//
//    answer = history.max()!
//    return answer
//}

//import Foundation
