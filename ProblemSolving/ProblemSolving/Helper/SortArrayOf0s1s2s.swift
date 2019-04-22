//
//  SortArrayOf0s1s2s.swift
//  ProblemSolving
//
//  Created by Marian on 4/22/19.
//  Copyright © 2019 Marian. All rights reserved.
//https://practice.geeksforgeeks.org/problems/sort-an-array-of-0s-1s-and-2s/0

import Foundation

struct SortArrayOf0s1s2s {
    
    fileprivate func swap( i: Int, with j: Int, in sortedArray: inout [Int]) {
        let temp = sortedArray[j]
        sortedArray[j] = sortedArray[i]
        sortedArray[i] = temp
    }
    
    func printSorrtedArray(array: [Int]) {
        
        var sortedArray = array
        for i in 0..<array.count {
            
            if sortedArray[i] == 0{
                swap(i: i, with: 0, in: &sortedArray)
            }else if sortedArray[i] == 2{
                swap(i: i, with: array.count-1, in: &sortedArray)
            }
        }
        let string = sortedArray.map{
            "\($0 )"
        }.joined(separator: " ")
        print(string)
        
    }
    
}
