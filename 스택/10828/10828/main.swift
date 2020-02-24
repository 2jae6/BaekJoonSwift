//
//  main.swift
//  10828
//
//  Created by 1 on 2020/02/12.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

var n = Int(readLine()!)!






public struct Stack<Element>{
    var storge = Array<Element>()
    
    init() {
    }
    
    public mutating func push(element:Element){
        storge.append(element)
    }
    public mutating func pop(){
        if storge.isEmpty == true{
            print("-1")
        }else{
            storge.popLast()
        }
    }
    public mutating func size(){
        print(storge.count)
    }
    public mutating func empty(){
        if storge.isEmpty == true{
            print(1)
        }else{
            print(0)
        }
    }
    public mutating func top(){
        if storge.first == nil {
            print(-1)
        }else{
            return print(storge.first!)
        }
    }
}

extension Stack:CustomStringConvertible{
    public var description: String {
        let m = storge.map{ (i) in
            "\(i)"
        }.reversed()
            .joined(separator: "\n")
        return m
    }
}


func exam(of description: String, action:()->Void){
    print("ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ\(description)ㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇㅇ")
    action()
}

exam(of: "시작"){
    var stack = Stack<Int>()

    for _ in 0 ... n - 1{
        var input = readLine()?.components(separatedBy: " ")
        let input_Var = input![0]
        
        if input_Var == "push" {
            stack.push(element: (Int(input![1]))!)
            
            
        }else if input_Var == "pop"{
            stack.pop()
        }else if input_Var == "size"{
            stack.size()
        }else if input_Var == "empty"{
            stack.empty()
        }else if input_Var == "top"{
            stack.top()
        }
    }
}




