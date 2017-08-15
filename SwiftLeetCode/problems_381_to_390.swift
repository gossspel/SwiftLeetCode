//
//  problems_381_to_390.swift
//  SwiftLeetCode
//
//  Created by Sunny Chan on 8/14/17.
//  Copyright © 2017 sunnystudio. All rights reserved.
//

import Foundation

class Problem382Solution {
    let head: ListNode
    let listLength: Int
    
    init(_ head: ListNode) {
        self.head = head
        var length: Int = 0
        var current: ListNode? = head
        
        while current != nil {
            length += 1
            current = current?.next
        }
        
        listLength = length
    }
    
    func getRandom() -> Int {
        let randomIndex: Int = Int(arc4random_uniform(UInt32(listLength)))
        var currentIndex: Int = 0
        var current: ListNode? = head
        
        while currentIndex < randomIndex {
            current = current?.next
            currentIndex += 1
        }
        
        return current?.val ?? -1
    }
}
