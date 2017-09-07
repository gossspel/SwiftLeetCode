//
//  BinarySearchProblems.swift
//  SwiftLeetCode
//
//  Created by Sunny Chan on 9/7/17.
//  Copyright © 2017 sunnystudio. All rights reserved.
//

import Foundation

class LeetCode069Solution {
    // https://leetcode.com/problems/sqrtx/description/
    func getSqrt(_ x: Int) -> Int {
        guard x > 1 else {
            return x
        }
        
        var left: Int = 0
        var right: Int = x
        
        while left <= right {
            let mid: Int = left + (right - left) / 2
            
            if mid * mid == x {
                return mid
            } else if mid * mid < x {
                left = mid + 1
            } else {
                right = mid - 1
            }
        }
        
        return right
    }
}
