//
//  LinkedListProblems.swift
//  SwiftLeetCode
//
//  Created by Sunny Chan on 8/17/17.
//  Copyright © 2017 sunnystudio. All rights reserved.
//

import Foundation

class LeetCode002Solution {

    class func addTwoNumbers(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        var n1: ListNode? = l1
        var n2: ListNode? = l2
        var sum: Int = 0
        var carryOver: Int = 0
        var resultNode: ListNode? = nil
        var currentResultNode: ListNode? = nil
        
        while n1 != nil || n2 != nil {
            sum += carryOver
            
            if let sureN1 = n1 {
                sum += sureN1.val
                n1 = sureN1.next
            }
            
            if let sureN2 = n2 {
                sum += sureN2.val
                n2 = sureN2.next
            }
            
            if currentResultNode != nil {
                currentResultNode?.next = ListNode(sum % 10)
                currentResultNode = currentResultNode?.next
            } else {
                currentResultNode = ListNode(sum % 10)
                resultNode = currentResultNode
            }
            
            carryOver = sum / 10
            sum = 0
        }
        
        if carryOver != 0 {
            currentResultNode?.next = ListNode(carryOver)
        }
        
        return resultNode
    }
    
}
