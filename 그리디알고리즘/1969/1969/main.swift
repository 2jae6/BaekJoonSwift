//
//  main.swift
//  1969
//
//  Created by 1 on 2020/03/13.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

//수 2개 입력
var nm: Array<String> = []
var n: Int
var m: Int


nm = readLine()!.components(separatedBy: " ")
n = Int(nm[0])!
m = Int(nm[1])!
var dna:[[String]] = Array(repeating: Array(repeating: "X", count: m), count: n)

//n만큼 반복
//m의 길이만큼

for i in 0 ... n - 1{
    var text = readLine()!
    for j in 0 ... text.count - 1{
        dna[i][j] = "\(text[text.index(text.startIndex, offsetBy: j)])"
    }
}
print(dna)

