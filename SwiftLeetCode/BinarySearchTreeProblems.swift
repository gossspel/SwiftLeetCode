//
//  BinarySearchTreeProblems.swift
//  SwiftLeetCode
//
//  Created by Sunny Chan on 8/16/17.
//  Copyright © 2017 sunnystudio. All rights reserved.
//

import Foundation

class Leetcode530Solution {
    var minDiff: Int = Int.max
    var prev: TreeNode?
    
    func getMinimumDifference(_ root: TreeNode?) -> Int {
        self.inOrderTraversal(root)
        return self.minDiff
    }
    
    func inOrderTraversal(_ root: TreeNode?) -> Void {
        guard let sureRoot = root else {
            return
        }
        
        self.inOrderTraversal(sureRoot.left)
        
        if let surePrev = self.prev {
            self.minDiff = min(self.minDiff, sureRoot.val - surePrev.val)
        }
        
        self.prev = sureRoot
        
        self.inOrderTraversal(sureRoot.right)
    }
}
