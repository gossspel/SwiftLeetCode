//
//  problems_061_to_070.swift
//  SwiftLeetCode
//
//  Created by Sunny Chan on 8/14/17.
//  Copyright © 2017 sunnystudio. All rights reserved.
//

import Foundation

class Problem069Solution {
    func getSqrt(_ x: Int) -> Int {
        guard x > 1 else {
            return x
        }
        
        var left: Int = 0
        var right: Int = x
        var mid: Int = left + (right - left) / 2
        
        while left <= right {
            if mid * mid == x {
                return mid
            } else if mid * mid < x {
                left = mid + 1
            } else {
                right = mid - 1
            }
            
            mid = left + (right - left) / 2
        }
        
        return right
    }
}
