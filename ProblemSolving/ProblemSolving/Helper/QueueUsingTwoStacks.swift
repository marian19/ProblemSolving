//
//  QueueUsingTwoStacks.swift
//  ProblemSolving
//
//  Created by Marian on 4/24/19.
//  Copyright © 2019 Marian. All rights reserved.
//https://practice.geeksforgeeks.org/problems/queue-using-two-stacks/1

import Foundation

struct QueueHelper {
    
    static func printDequeuedElements(_ array: [Int]) {
        var queue = Queue<Int>()
        var printedString = "";
        var enqueueFlag = false
        for item in array {
            if item == 2 && !enqueueFlag{
                enqueueFlag = false
                
                if  let dequeuedItem = queue.dequeue(){
                    printedString = "\(printedString) \(dequeuedItem)"
                }else{
                    printedString = "\(printedString) \(-1)"
                }
            }else if item == 1 {
                enqueueFlag = true
            }
            else{
                enqueueFlag = false
                queue.enqueu(element: item)
            }
        }
        print(printedString)
    }
    
}
