//
//  main.swift
//  1966
//
//  Created by 1 on 2020/03/11.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var nm: Array<String> = []
var n: Array<Int> = []
var m: Array<Int> = []
var important: Array<String> = []
var count:Int = 1
var presentImportant:Array<Int>

var testcase = Int(readLine()!)!

for _ in 0 ... testcase - 1{
    nm = readLine()!.components(separatedBy: " ")
    n.append(Int(nm[0])!)
    m.append(Int(nm[1])!)
    important.append(readLine()!)
    
}


for i in 0 ... testcase - 1{
    presentImportant = important[i].components(separatedBy: " ").map{Int($0)!}
    
    if presentImportant.count == 1{
        print(count)
        
    }else{
        for j in 1 ... presentImportant.count - 1{
            if presentImportant[0] >= presentImportant[j]{
                count += 1
            }else if presentImportant[0] < presentImportant[j]{
                presentImportant.append(presentImportant[0])
                presentImportant.remove(at: 0)
            }
            
        }
        print(count)
        count = 1
    }
    
}

