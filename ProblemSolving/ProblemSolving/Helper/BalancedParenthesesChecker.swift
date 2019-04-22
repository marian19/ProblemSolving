//
//  BalancedParenthesesChecker.swift
//  ProblemSolveing
//
//  Created by Marian on 4/19/19.
//  Copyright © 2019 Marian. All rights reserved.
//

import UIKit

enum Bracket: Character {
    case Left = "("
    case Right = ")"
    case LeftCurly = "{"
    case RightCurly = "}"
    case LeftSquare = "["
    case RightSquare = "]"
    
    var matchingOpen: Bracket? {
        switch self {
        case .Right:        return .Left
        case .RightCurly:   return .LeftCurly
        case .RightSquare:  return .LeftSquare
        default:            return nil
        }
    }
}

struct BalancedParenthesesChecker {
    func isBalanced(sequence: [Character]) -> Bool {
        var stack = Stack<Bracket>()
        for char in sequence {
            if let bracket = Bracket(rawValue: char) {
                if let open = bracket.matchingOpen {
                    // `bracket` is a closing bracket and `open` the corresponding opening bracket:
                    guard let last = stack.pop(), last == open  else {
                        return false
                    }
                } else {
                    // `bracket` is an opening bracket:
                    stack.push(element: bracket)
                }
            } else {
                fatalError("unknown bracket found")
            }
        }
        return stack.isEmpty()
    }
}
