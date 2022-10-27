//
//  부족한 금액 계산하기.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/26.
//

import Foundation
func solution(_ price:Int, _ money:Int, _ count:Int) -> Int64{
    //count번 타기 때문에 1부터 count번째만큼 돈을 계산해준다.
    var pay: Int64 = Int64((1...count).map { value in
        //1 * moeny , 2 * moeny ... count * moeny
        value * price
        //탈때마다 지불해야할 돈을 모두 더해준다.
    }.reduce(0, +))
    let result = (Int64(money) - pay)
    //돈이 모자르지 않으면 0 아니면 -를 곱해줘서 양수로 나오게끔 만든다.
    return result >= 0 ? 0 : -result
}
