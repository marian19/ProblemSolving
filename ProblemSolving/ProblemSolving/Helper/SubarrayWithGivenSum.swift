//
//  SubarrayWithGivenSum.swift
//  ProblemSolveing
//
//  Created by Marian on 4/22/19.
//  Copyright © 2019 Marian. All rights reserved.
//

import UIKit

struct SubarrayWithGivenSum{

    func printFirstAndLastIndicesToSubarrayWithGivenSum(intArray: [Int], requiredSum: Int ){
        
        var startIndex = 0
        var lastIndex = 0
        var sum = 0
        
        while sum <  requiredSum && lastIndex < intArray.count{
            sum += intArray[lastIndex]
            if sum > requiredSum{
                startIndex += 1
                lastIndex = startIndex
                sum = 0
            }else if sum == requiredSum{
                print("\(startIndex+1) \(lastIndex+1)")
                return
            }else{
                lastIndex += 1
            }
        }
        
        print("-1")
    }
}
