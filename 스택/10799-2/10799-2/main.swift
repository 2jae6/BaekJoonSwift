//
//  main.swift
//  10799
//
//  Created by 1 on 2020/03/09.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation


func solution(_ text:String) -> Int {
    let letters = text.map() {String($0)}
    let length = letters.count
    var lineCount: Int = 0
    var result: Int = 0
 
    for i in 0..<length {
        if letters[i] == "(" {
            lineCount += 1
        } else if letters[i - 1] == "(" {
            lineCount -= 1
            result += lineCount
        } else {
            lineCount -= 1
            result += 1
        }
    }
    return result
}

print(solution(readLine()!))
