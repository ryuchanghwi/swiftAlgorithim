import Foundation


var heightArray: [Int] = []
for _ in 0..<9 {
    heightArray.append(Int(readLine()!)!)
}

heightArray = heightArray.sorted()

let totalHeight = heightArray.reduce(0, +) - 100

var fake1 = 0
var fake2 = 0

for i in 0..<heightArray.count {
    for j in (i + 1)..<heightArray.count {
        
        if totalHeight == heightArray[i] + heightArray[j] {
            fake1 = i
            fake2 = j
            break
        }
    }
}

heightArray.remove(at: fake2)
heightArray.remove(at: fake1)
for i in heightArray {
    print(i)
}
