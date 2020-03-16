//
//  main.swift
//  5585
//
//  Created by 1 on 2020/03/13.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

//500 100 50 10 5 1
let won500 = 500
let won100 = 100
let won50 = 50
let won10 = 10
let won5 = 5
let won1 = 1

var result = 0
//100원 냈을 때 가격

//입력
var input = Int(readLine()!)!

var remainder = 1000 - input
//나머지를 500으로 나눈 횟수를 저장
if remainder >= won500{
    result = result + (remainder / won500)
    remainder = remainder - won500 * (remainder / won500)
}
if remainder >= won100{
    result = result + (remainder / won100)
    remainder = remainder - won100 * (remainder / won100)
}
if remainder >= won50{
    result = result + (remainder / won50)
    remainder = remainder - won50 * (remainder / won50)
}
if remainder >= won10{
    result = result + (remainder / won10)
    remainder = remainder - won10 * (remainder / won10)
}
if remainder >= won5{
    result = result + (remainder / won5)
    remainder = remainder - won5 * (remainder / won5)
}
if remainder >= won1{
    result = result + (remainder / won1)
    remainder = remainder - won1 * (remainder / won1)
}

print(result)
