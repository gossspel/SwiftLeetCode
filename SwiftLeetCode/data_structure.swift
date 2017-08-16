//
//  data_structure.swift
//  SwiftLeetCode
//
//  Created by Sunny Chan on 7/14/17.
//  Copyright © 2017 sunnystudio. All rights reserved.
//

import Foundation

class ListNode {
    var val: Int
    var next: ListNode?
    
    init(_ val: Int) {
        self.val = val
        self.next = nil
    }
}

class TreeNode {
    var val: Int
    var left: TreeNode?
    var right: TreeNode?
    
    init(_ val: Int) {
        self.val = val
        self.left = nil
        self.right = nil
    }
}

class UndirectedGraphNode: Hashable {
    var label: Int
    var neighbors: [UndirectedGraphNode]
    
    var hashValue: Int {
        return self.label.hashValue
    }
    
    static func == (lhs: UndirectedGraphNode, rhs: UndirectedGraphNode) -> Bool {
        return lhs.hashValue == rhs.hashValue
    }
    
    init(_ label: Int) {
        self.label = label
        self.neighbors = []
    }
}
