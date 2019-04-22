//
//  Stack.swift
//  ProblemSolveing
//
//  Created by Marian on 4/19/19.
//  Copyright © 2019 Marian. All rights reserved.
//

import UIKit

protocol StackType {
    associatedtype Element
    mutating func push(element: Element)
    mutating func pop() -> Element?
    func isEmpty() -> Bool
}

struct Stack<Element>: StackType{
    
    var top = -1
    var elements = [Element]()
    
    func isEmpty() -> Bool {
        return top == -1 ? true : false
    }
    
    mutating func push(element: Element) {
        top += 1
        elements.append(element)
    }
    
    mutating func pop() -> Element? {
        if top > -1 {
            let element = elements[top]
            elements.remove(at: top)
            top -= 1
            return element
        }
        return nil
    }
}
