//
//  main.swift
//  9095
//
//  Created by 1 on 2020/03/19.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var n = (Int(readLine()!)!)

var dp = [Int](repeating: 0, count: 11)
dp[0] = 1
dp[1] = 2
dp[2] = 4


for _ in 0 ... n - 1{
    let input = Int(readLine()!)!
    for j in 3 ... input - 1{
        dp[j] = dp[j - 3] + dp[j - 2] + dp[j - 1]
    }
    
    print(dp[input - 1])
    
}

