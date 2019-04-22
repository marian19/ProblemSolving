//
//  MaximumIndex.swift
//  ProblemSolveing
//
//  Created by Marian on 4/22/19.
//  Copyright © 2019 Marian. All rights reserved.
//
//https://practice.geeksforgeeks.org/problems/maximum-index/0/?ref=self
import UIKit

struct MaximumIndex {
    
    func printMaxIndex(array: [Int]) {
        
        var maximumIndex = 0
        for i in 0..<array.count {
            for j in i..<array.count{
                
                if (array[i] < array[j] && ((j-i) > maximumIndex)){
                    maximumIndex = j-i
                }
            }
        }
        
        print(maximumIndex)
        
    }
}
