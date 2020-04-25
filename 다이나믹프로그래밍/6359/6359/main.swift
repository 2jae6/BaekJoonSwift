//
//  main.swift
//  6359
//
//  Created by 1 on 2020/03/20.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var t = Int(readLine()!)!

//라운드

// 0은 잠긴거 1은 열린거



for z in 1 ... t{
    var n = Int(readLine()!)!
    var room = [Int](repeating: 0, count: 101)
    var run : Int = 0
    
    for i in 1 ... n{
        for j in 1 ... 100{
            
            if 101 >= (j * i) {
                if room[j * i] == 0 {
                    room[j * i] = 1
                }else if room[j * i] == 1{
                    room[j * i] = 0
                }
            }
        }
    }
    
    //도망자 수 찾기
    for i in 1 ... n{
        if room[i] == 1{
            run += 1
        }
        
    }
    print(run)

}
