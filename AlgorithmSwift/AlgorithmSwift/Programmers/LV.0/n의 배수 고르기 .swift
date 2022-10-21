//
//  n의 배수 고르기 .swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/21.
//

import Foundation
func solution(_ n:Int, _ numlist:[Int]) -> [Int] {
    //배열 중 주어진 들어오는 인자(n)의 배수만 걸러내면 되기 때문에
    //filter를 사용
    return numlist.filter { value in
        //n으로 나눴을때 나머지가 0인 경우만 걸러내기
        value % n == 0
    }
}
