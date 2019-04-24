//
//  Queue.swift
//  ProblemSolving
//
//  Created by Marian on 4/24/19.
//  Copyright © 2019 Marian. All rights reserved.
//

import Foundation

struct Queue<Element> {
    var stack1 = Stack<Element>()
    var stack2 = Stack<Element>()
    
    mutating func enqueu(element: Element) {
        
        while !stack1.isEmpty() {
            if let lastElement = stack1.pop(){
                stack2.push(element: lastElement)
            }
        }
        stack1.push(element: element)
        while !stack2.isEmpty() {
            if let lastElement = stack2.pop(){
                stack1.push(element: lastElement)
            }
        }
    }
    
    mutating func dequeue() -> Element? {
       return stack1.pop()
    }
    
}
