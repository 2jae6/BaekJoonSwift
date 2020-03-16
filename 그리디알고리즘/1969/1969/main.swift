//
//  main.swift
//  1969
//
//  Created by 1 on 2020/03/13.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var nm: Array<String> = []
var n: Int
var m: Int


nm = readLine()!.components(separatedBy: " ")
n = Int(nm[0])!
m = Int(nm[1])!
var dna:[[String]] = Array(repeating: Array(repeating: "X", count: m), count: n)
var numA = 0
var numC = 0
var numG = 0
var numT = 0
var resultDNA:String = ""
var resultHD:Int = 0

for i in 0 ... n - 1{
    let text = readLine()!
    for j in 0 ... text.count - 1{
        dna[i][j] = "\(text[text.index(text.startIndex, offsetBy: j)])"

    }
}

for j in 0 ... m - 1{
    for i in 0 ... n - 1{
        if dna[i][j] == "A"{
            numA += 1
        }
        if dna[i][j] == "C"{
            numC += 1
        }
        if dna[i][j] == "G"{
            numG += 1
        }
        if dna[i][j] == "T"{
            numT += 1
        }
        
    }
    
    
    if numA >= numC && numA >= numG && numA >= numT{
        resultDNA = resultDNA + "A"
        resultHD = resultHD + (n - numA)
        numA = 0
        numC = 0
        numG = 0
        numT = 0
    }else if numC >= numA && numC >= numG && numC >= numT{
        resultDNA = resultDNA + "C"
        resultHD = resultHD + (n - numC)
        numA = 0
        numC = 0
        numG = 0
        numT = 0
    }else if numG >= numC && numG >= numA && numG >= numT{
        resultDNA = resultDNA + "G"
        resultHD = resultHD + (n - numG)
        numA = 0
        numC = 0
        numG = 0
        numT = 0
    }else if numT >= numA && numT >= numC && numT >= numG{
        resultDNA = resultDNA + "T"
        resultHD = resultHD + (n - numT)
        numA = 0
        numC = 0
        numG = 0
        numT = 0
    }
}
print(resultDNA)
print(resultHD)
