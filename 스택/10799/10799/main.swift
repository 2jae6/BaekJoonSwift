//
//  main.swift
//  10799
//
//  Created by 1 on 2020/03/09.
//  Copyright © 2020 wook. All rights reserved.
//

import Foundation

public struct Stack<Element>{
    
    public var storage = Array<Element>()
    
    public mutating func push(element:Element){
        storage.append(element)
    }
    
    public mutating func pop()->Element?{
        return storage.popLast()
    }
    public mutating func size()->Int{
        return storage.count
    }
}

var inputData:String = readLine()!
var inputArray:Array<String> = []
var result:Int = 0

var stack = Stack<Int>()


//입력받기
for i in 0 ... inputData.count - 1{
    inputArray.append("\(inputData[inputData.index(inputData.startIndex, offsetBy: i)])")
}


//비교하기
for i in 0 ... inputArray.count - 1{
    if inputArray[i] == "("{
        stack.push(element: 1)
    }else if inputArray[i] == ")"{
        stack.pop()
        //레이저면??
        if inputArray[i - 1] == "("{
            result = result + stack.size()
        }else if inputArray[i - 1] == ")"{
            result += 1
        }
    }
}
print(result)
