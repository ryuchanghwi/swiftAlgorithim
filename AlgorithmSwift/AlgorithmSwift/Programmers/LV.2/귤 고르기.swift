import Foundation

func solution(_ k:Int, _ tangerine:[Int]) -> Int {
    var fruitsDic = [Int: Int]() // 과일 크기: 갯수
    
    for i in 0..<tangerine.count {
        if fruitsDic.keys.contains(tangerine[i]) {
            var fruitsValue = fruitsDic[tangerine[i]]!
            fruitsDic[tangerine[i]] = fruitsValue + 1
        }
        else {
            fruitsDic[tangerine[i]] = 1
        }
    } //과일 크기와 갯수를 채워넣기
    var kValue = k // 귤 갯수를 업데이트하기 위해서 변수에 할당
    var result = 0 // 결과값
    for value in fruitsDic.values.sorted(by: >) {
        // 딕셔너리의 벨류를 높은거 기준으로 정렬 후 순회
        result += 1 // 결과 높여주기
        kValue -= value // 현재 값을 빼기
        if kValue <= 0 {
            break //만약에 0보다 작아졌다면 그만
        }
    }
    return result
}
