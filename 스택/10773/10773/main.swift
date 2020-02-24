//
//  main.swift
//  10773
//
//  Created by 1 on 2020/02/19.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

public struct Stack<Element>{
    private var storage = Array<Element>()
    public init(){
        
    }
    
    public mutating func push(_ element: Element){
        storage.append(element)
    }
    
    public mutating func pop()-> Element?{
        return storage.popLast()
    }
    
    public mutating func count()->Int{
        return storage.count
    }
    public mutating func resultValue()-> Int{
        var result = 0
        var imsi:[Int] = []
        for i in 0 ... storage.count - 1{
            imsi.append(storage[i] as! Int)
        }
        for i in 0 ... storage.count - 1{
            result = result + imsi[i]
        }
        return result
    }
}

var k = Int(readLine()!)!
var stack = Stack<Int>()

for _ in 0...k - 1{
    
    let input = Int(readLine()!)!
    if input == 0 {
        stack.pop()
    }else{
        stack.push(input)
    }
}
if stack.count() == 0{
    print(0)
}else{
    print(stack.resultValue())
}
