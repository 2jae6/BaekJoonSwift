//
//  main.swift
//  2631
//
//  Created by 1 on 2020/03/24.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var n = Int(readLine()!)!
var student: Array<Int> = []
var dstudent: Array<Int> = []
var max = 0
for _ in 1 ... n{
    student.append(Int(readLine()!)!)
}


//LIS 구하기 나머지값 옮기기
for i in 0 ... n - 1{
    dstudent.append(1)
    for j in 0 ... i{
        if (student[j] < student[i] && dstudent[i] < dstudent[j] + 1){
            dstudent[i] = dstudent[j] + 1
            if (max < dstudent[i]){
              max = dstudent[i];
            }
           

        }
    }
}


print(n - max)
