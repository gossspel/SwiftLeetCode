//
//  problems_021_to_030.swift
//  SwiftLeetCode
//
//  Created by Sunny Chan on 7/31/17.
//  Copyright © 2017 sunnystudio. All rights reserved.
//

import Foundation

class Problem021Solution {
    class func mergeTwoLists(_ l1: ListNode?, _ l2: ListNode?) -> ListNode? {
        if l1 == nil && l2 == nil {
            return nil
        } else if l1 != nil && l2 == nil {
            return l1
        } else if l1 == nil && l2 != nil {
            return l2
        } else {
            guard let sureL1 = l1, let sureL2 = l2 else {
                return nil
            }
            
            let l1LessThanL2: Bool = sureL1.val < sureL2.val
            let root: ListNode = (l1LessThanL2) ? sureL1 : sureL2
            var currentL1: ListNode? = (l1LessThanL2) ? sureL1.next : sureL1
            var currentL2: ListNode? = (l1LessThanL2) ? sureL2 : sureL2.next
            var current: ListNode? = root

            
            while currentL1 != nil && currentL2 != nil {
                guard let sureCurrentL1 = currentL1, let sureCurrentL2 = currentL2 else {
                    return nil
                }
                
                if sureCurrentL1.val < sureCurrentL2.val {
                    current?.next = sureCurrentL1
                    currentL1 = currentL1?.next
                } else {
                    current?.next = sureCurrentL2
                    currentL2 = currentL2?.next
                }
                
                current = current?.next
            }
            
            if currentL1 != nil {
                while currentL1 != nil {
                    current?.next = currentL1
                    currentL1 = currentL1?.next
                    current = current?.next
                }
            }
            
            if currentL2 != nil {
                while currentL2 != nil {
                    current?.next = currentL2
                    currentL2 = currentL2?.next
                    current = current?.next
                }
            }
            
            return root
        }
    }
}
