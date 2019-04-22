//
//  ViewController.swift
//  ProblemSolving
//
//  Created by Marian on 4/22/19.
//  Copyright © 2019 Marian. All rights reserved.
//

import UIKit

class ViewController: UIViewController {
    
    override func viewDidLoad() {
        super.viewDidLoad()
        //        let string : String = "[(])"
        //
        //        let characters = Array(string)
        ////        let characters = readCharacters()
        //        let result = BalancedParenthesesChecker().isBalanced(sequence: characters)
        //        print(result)
        // Do any additional setup after loading the view, typically from a nib.
        //
        //        let intArray = [142,112,54,69,148,45,63,158,38,60,124,142,130,179,117,36,191,43,89,107,41,143,65,49,47,6,91,130,171,151,7,102,194,149,30,24,85,155,157,41,167,177,132,109,145,40,27,124,138,139,119,83,130,142,34,116,40,59,105,131,178,107,74,187,22,146,125,73,71,30,178,174,98,113]
        //        let sum = 665
        //        SubarrayWithGivenSum().printFirstAndLastIndicesToSubarrayWithGivenSum(intArray: intArray, requiredSum: sum)
        
        let array = [34, 8, 10, 3, 2, 80, 30, 33, 1]
        MaximumIndex().printMaxIndex(array: array)
    }
    //
    //    func readCharacters() -> [Character] {
    //        guard let line = readLine() else {
    //            fatalError("Unexpected end of input")
    //        }
    //        return Array(line)
    //    }
}

