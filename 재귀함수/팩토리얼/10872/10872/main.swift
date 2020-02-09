//
//  main.swift
//  10872
//
//  Created by 1 on 2020/02/09.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var p = Int(readLine()!)!


func recursive(n: Int) -> Int{
    if n == 0 {
        return 1
    }
    return n * recursive(n: n-1)
}

print(recursive(n: p))
