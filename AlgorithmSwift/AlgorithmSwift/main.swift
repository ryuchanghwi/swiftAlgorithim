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

func solution(_ topping:[Int]) -> Int {
    var myDic = [Int: Int]()
    var broDic = [Int: Int]()
    var result = 0
    
    for i in 0..<topping.count {
        myDic = [:]
        broDic = [:]
        for j in 0..<i {
            if myDic.keys.contains(topping[j]) {
                var tempValue = myDic[topping[j]]!
                myDic[topping[j]] = 1 + tempValue
            }
            else {
                myDic[topping[j]] = 1
            }
        }
        for k in i..<topping.count {
            if broDic.keys.contains(topping[k]) {
                var tempValue = broDic[topping[k]]!
                broDic[topping[k]] = 1 + tempValue
            }
            else {
                broDic[topping[k]] = 1
            }
        }
        
        if myDic.keys.count == broDic.keys.count {
            result += 1
            
        }
    }
    return result
}

solution([1, 2, 1, 3, 1, 4, 1, 2])
