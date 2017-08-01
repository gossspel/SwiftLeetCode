//
//  problems_011_to_020.swift
//  SwiftLeetCode
//
//  Created by Sunny Chan on 7/18/17.
//  Copyright © 2017 sunnystudio. All rights reserved.
//

import Foundation

class Problem020Solution {
    class func isValid(_ s: String) -> Bool {
        var stack: [String] = []
        
        for char in s.characters {
            let string: String = String(char)
            
            if string == "(" {
                stack.append(")")
            } else if string == "[" {
                stack.append("]")
            } else if string == "{" {
                stack.append("}")
            } else if stack.isEmpty || stack.removeLast() != string {
                return false
            }
        }
        
        return stack.isEmpty
    }
}

class Problem015Solution {
    func threeSum(_ nums: [Int]) -> [[Int]] {
        var solutions: [[Int]] = []
        let sortedNums: [Int] = nums.sorted()
        
        // Example: [-4, -2, -1, -1, 0, 1, 2]
        
        for (index, element) in Array(sortedNums[0...(sortedNums.count - 3)]).enumerated() {
            // Skip repeating index
            if index > 0 && element == sortedNums[index - 1] {
                continue
            }
            
            let target: Int = 0 - element
            var leftIndex: Int = index + 1
            var rightIndex: Int = sortedNums.count - 1
            
            while leftIndex < rightIndex {
                let leftRightSum: Int = sortedNums[leftIndex] + sortedNums[rightIndex]
                
                if leftRightSum == target {
                    solutions.append([element, sortedNums[leftIndex], sortedNums[rightIndex]])
                    leftIndex += 1
                    rightIndex -= 1
                    
                    // Skip repeated left value
                    while leftIndex < rightIndex && sortedNums[leftIndex] == sortedNums[leftIndex - 1] {
                        leftIndex += 1
                    }
                    
                    // Skip repeated right value
                    while leftIndex < rightIndex && sortedNums[rightIndex] == sortedNums[rightIndex + 1] {
                        rightIndex -= 1
                    }
                    
                } else if leftRightSum < target {
                    leftIndex += 1
                } else if leftRightSum > target {
                    rightIndex -= 1
                }
            }
        }
        
        return solutions
    }
}
