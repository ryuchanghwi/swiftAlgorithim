import Foundation

func solution(_ priorities:[Int], _ location:Int) -> Int {
    var completedProcessArray = [(Int, Int)]() // 프로세스에 따라 재정렬
    var prioritiesTupleArray = [(Int, Int)]() // 인덱스와 우선순위
    
    // 인덱스와 우선순위를 prioritiesTupleArray에 할당
    for i in 0..<priorities.count {
        prioritiesTupleArray.append((i, priorities[i]))
    }
    
    // prioritiesTupleArray이 전부 비워질때까지 반복
    while !prioritiesTupleArray.isEmpty {
        // 큐에서 하나 빼기
        var fifo = prioritiesTupleArray.removeFirst()
        // 최댓값 - 비교하기 위함
        var maxValue = fifo.1
        //prioritiesTupleArray 순회하며 maxValue 업데이트
        for i in 0..<prioritiesTupleArray.count {
            maxValue = max(maxValue, prioritiesTupleArray[i].1)
        }
        
        // 만약에 큐에서 빼낸 값이 max값보다 크거나 같으면 completedProcessArray넣기
        if fifo.1 >= maxValue {
            completedProcessArray.append(fifo)
        }
        // 아니면 다시 맨 뒤로 넣기
        else {
            prioritiesTupleArray.append(fifo)
        }
    }
    // 결과
    var result = 0
    // completedProcessArray 순회하며 location이 일치하는 값 찾기
    for i in 0..<completedProcessArray.count {
        if completedProcessArray[i].0 == location {
            result = i + 1
            break
        }
    }
    return result
}
