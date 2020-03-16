//
//  main.swift
//  1965
//
//  Created by 1 on 2020/03/16.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation


var n = Int(readLine()!)!
var input = readLine()?.components(separatedBy: " ").map(){Int($0)!}
var dinput:Array<Int> = []
var max = 1

for i in 0 ... n - 1{
    dinput.append(1)
    for j in 0 ... i{
        if (input![j] < input![i] && dinput[i] < dinput[j] + 1){
            dinput[i] = dinput[j] + 1
        }
    }
    if max < dinput[i]{
        max = dinput[i]
    }
}

print(max)
