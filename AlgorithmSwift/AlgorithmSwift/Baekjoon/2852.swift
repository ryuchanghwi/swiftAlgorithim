//
//  2852.swift
//  AlgorithmSwift
//
//  Created by 류창휘 on 2023/09/05.
//

import Foundation


//let scoreCount = Int(readLine()!)!
//
//
//var teamInfo = "" { // 스코어한 팀 정보
//    didSet {
//        if teamInfo == "1" {
//            firstTeamScore += 1
//
//            if firstTeamScore > secondTeamScore {
//                nowWinningTeam = "1"
//            }
//        }
//        else if teamInfo == "2" {
//            secondTeamScore += 1
//
//            if firstTeamScore < secondTeamScore {
//                nowWinningTeam = "2"
//            }
//        }
//    }
//}
//var timeInfo = "" //스코어한 팀의 시간
//
//var startScoreTime = ""
//var endScoreTime = ""
//
//// 1팀 점수
//var firstTeamScore = 0
//// 1팀 이기고 있는 시간
//var firstTeamTime = "00:00"
//// 1팀 비교 시간
//var firstCompareTime = ""
//
//// 2팀 점수
//var secondTeamScore = 0
//// 2팀 이기고 있는 시간
//var secondTeamTime = "00:00"
//// 2팀 비교 시간
//var secondCompareTime = ""
//
//
//var nowWinningTeam = ""
//
//
//// 시간 계산하는 메서드
//func calcTime(beforeTime: String, currentTime: String) -> String {
//    let beforeTimeTen: String = beforeTime.split(separator: ":").map { String($0) }[0]
//    let beforeTimeOne: String = beforeTime.split(separator: ":").map { String($0) }[1]
//    var currentTimeTen: String = currentTime.split(separator: ":").map { String($0) }[0]
//    let currentTimeOne: String = currentTime.split(separator: ":").map { String($0) }[1]
//    var resultTimeOne = 0
//    var resultTimeTen = 0
//
//    if Int(currentTimeOne)! - Int(beforeTimeOne)! < 0 {
//        currentTimeTen = String(Int(currentTimeTen)! - 1)
//        resultTimeOne = 60 - Int(currentTimeOne)! - Int(beforeTimeOne)!
//        resultTimeTen = Int(currentTimeTen)! - Int(beforeTimeTen)!
//    }
//    else {
//        resultTimeOne = Int(currentTimeOne)! - Int(beforeTimeOne)!
//        resultTimeTen = Int(currentTimeTen)! - Int(beforeTimeTen)!
//    }
//
//    return "\(resultTimeTen):\(resultTimeOne)"
//}
//
//// 시간 더하는 메서드
//func plusTime(beforeTime: String, currentTime: String) -> String {
//    let beforeTimeTen: String = beforeTime.split(separator: ":").map { String($0) }[0]
//    let beforeTimeOne: String = beforeTime.split(separator: ":").map { String($0) }[1]
//    var currentTimeTen: String = currentTime.split(separator: ":").map { String($0) }[0]
//    let currentTimeOne: String = currentTime.split(separator: ":").map { String($0) }[1]
//
//    var resultTimeOne = 0
//    var resultTimeTen = 0
//
//    if Int(currentTimeOne)! + Int(beforeTimeOne)! >= 60 {
//        currentTimeTen = String(Int(currentTimeTen)! + 1)
//        resultTimeOne = Int(currentTimeOne)! + Int(beforeTimeOne)! - 60
//        resultTimeTen = Int(currentTimeTen)! + Int(beforeTimeTen)!
//    }
//    else {
//        resultTimeOne = Int(currentTimeOne)! + Int(beforeTimeOne)!
//        resultTimeTen = Int(currentTimeTen)! + Int(beforeTimeTen)!
//    }
//
//    return "\(resultTimeTen):\(resultTimeOne)"
//}
//
//
//for i in 0..<scoreCount {
//    // 팀정보와 시간정보
//    let info = readLine()!.split(separator: " ").map { String($0) }
//
//    teamInfo = info[0]  // 팀 정보
//    timeInfo = info[1] // 시간 정보
//
//
//    // 점수가 같다면
//    if firstTeamScore == secondTeamScore {
//        if nowWinningTeam == "1" {
//            let tempTime = calcTime(beforeTime: firstCompareTime, currentTime: timeInfo)
//            print(tempTime, "템프템프")
//            print(firstTeamTime, "템프 밑")
//            firstTeamTime = plusTime(beforeTime: firstTeamTime, currentTime: tempTime)
//
//        }
//        else if nowWinningTeam == "2" {
//            let tempTime = calcTime(beforeTime: secondCompareTime, currentTime: timeInfo)
//            secondTeamTime = plusTime(beforeTime: secondTeamTime, currentTime: tempTime)
//        }
//
//        // 현재 이기고 있는팀 리셋
//        nowWinningTeam = ""
//    }
//    // 점수가 다르면
//    else {
//        // 1팀이 이기고 있을 때
//        if nowWinningTeam == "1" {
//            // 처음 막 이겼을 떄는 시작 시간만 할당해주기
//            if firstCompareTime == "" {
//                firstCompareTime = timeInfo
//            }
//            // 이기고 있는 시간만큼 더해주기
//            else if firstCompareTime != "" {
//                firstTeamTime = plusTime(beforeTime: firstTeamTime, currentTime: timeInfo)
////                firstCompareTime = ""
//
//            }
//        }
//        else if nowWinningTeam == "2" {
//            // 처음 막 이겼을 떄는 시작 시간만 할당해주기
//            if secondCompareTime == "" {
//                secondCompareTime = timeInfo
//            }
//            // 이기고 있는 시간만큼 더해주기
//            else if secondCompareTime != "" {
//                secondTeamTime = plusTime(beforeTime: secondTeamTime, currentTime: timeInfo)
//            }
//        }
//    }
//
//
//    if i + 1 == scoreCount {
//        timeInfo = "48:00"
//        // 점수가 같다면
//        if firstTeamScore == secondTeamScore {
//            if nowWinningTeam == "1" {
//                let tempTime = calcTime(beforeTime: firstCompareTime, currentTime: timeInfo)
//                firstTeamTime = plusTime(beforeTime: firstTeamTime, currentTime: tempTime)
//            }
//            else if nowWinningTeam == "2" {
//                let tempTime = calcTime(beforeTime: secondCompareTime, currentTime: timeInfo)
//                secondTeamTime = plusTime(beforeTime: secondTeamTime, currentTime: tempTime)
//            }
//
//            // 현재 이기고 있는팀 리셋
//            nowWinningTeam = ""
//        }
//        // 점수가 다르면
//        else {
//            // 1팀이 이기고 있을 때
//            if nowWinningTeam == "1" {
//                // 처음 막 이겼을 떄는 시작 시간만 할당해주기
//                if firstCompareTime == "" {
//                    firstCompareTime = timeInfo
//                }
//                // 이기고 있는 시간만큼 더해주기
//                else if firstCompareTime != "" {
//                    firstTeamTime = calcTime(beforeTime: firstCompareTime, currentTime: timeInfo)
//                    firstCompareTime = ""
//                }
//            }
//            else if nowWinningTeam == "2" {
//                // 처음 막 이겼을 떄는 시작 시간만 할당해주기
//                if secondCompareTime == "" {
//                    secondCompareTime = timeInfo
//                }
//                // 이기고 있는 시간만큼 더해주기
//                else if secondCompareTime != "" {
//                    secondTeamTime = calcTime(beforeTime: secondCompareTime, currentTime: timeInfo)
//                }
//            }
//        }
//    }
//}

import Foundation
let N = Int(readLine()!)! // 입력 카운트 값
var score = [0,0]
var time = [0,0]
var current = 0
for _ in 0..<N {
    // 띄어쓰기를 기준으로 골 넣은 팀, 시간
    let input = readLine()!.split {$0 == " "}
    // 골 넣은 시간을 : 를 기준으로 나눈다.
    let inputGoal = input[1].split {$0 == ":"}.map {Int($0)!}
    // 10분 단위와 1분 단위를 하나로 합친다.
    let goalTime = inputGoal[0]*60 + inputGoal[1]
    
    // 1팀이 점수가 더 높다면
    if score[0] > score[1] {
        // 1팀의 시간에 이기고 있는 값을 추가
        time[0] += goalTime-current
    }
    else if score[1] > score[0] {
        // 2팀의 시간에 이기고 있는 값을 추가
        time[1] += goalTime-current
        
    }
    
    // 1팀과 2팀에 득점 += 1
    score[Int(input[0])!-1] += 1
    // 현재 값에 골 넣은 시간 할당
    current = goalTime
}
// 마지막골부터 48분까지 계산
// 1팀이 이기고 있었다면 시간에 누적 할당
if score[0] > score[1] {
    time[0] += 48*60-current
}
// 2팀이 이기고 있었다면 시간에 누적 할당
else if score[1] > score[0] {
    time[1] += 48*60-current
}

var firstTeamTen = time[0] / 60
var firstTeamOne = time[0] - firstTeamTen * 60
var secondTeamTen = time[1] / 60
var secondTeamOne = time[1] - secondTeamTen * 60
print("\(String(format: "%02d", firstTeamTen)):\(String(format: "%02d", firstTeamOne))")
print("\(String(format: "%02d", secondTeamTen)):\(String(format: "%02d", secondTeamOne))")
