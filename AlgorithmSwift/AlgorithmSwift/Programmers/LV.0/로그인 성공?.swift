//
//  로그인 성공?.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2022/10/09.
//

import Foundation
func solution(_ id_pw:[String], _ db:[[String]]) -> String {
    var answer = ""
    
    for i in db {
        if id_pw[0] == i[0] {
            if id_pw[1] == i[1] {
                answer = "login"
                break
            }
            else if id_pw[1] != i[1] {
                answer = "wrong pw"
                break
            }
        }
        else {
            answer = "fail"
            continue
        }
    }
    return answer
}
