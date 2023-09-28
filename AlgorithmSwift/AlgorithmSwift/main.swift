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
//func solution(_ n:Int, _ m:Int, _ section:[Int]) -> Int {
//    var check = Array(repeating: true, count: n + 1)
//    for i in 0..<n+1 {
//        if section.contains(i) {
//            check[i] = false
//        }
//    }
//    var count = 0
//    for i in 0..<check.count {
//        if check[i] == false {
//            count += 1
//            for j in 0..<m {
//                if i + j < check.count {
//                    if check[i + j] == false {
//                                            check[i + j] = true
//                    }
//                }
//            }
//        }
//    }
//    
//    
//    return count
//}
