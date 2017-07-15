//
//  problems_111_to_120.swift
//  SwiftLeetCode
//
//  Created by Sunny Chan on 7/14/17.
//  Copyright © 2017 sunnystudio. All rights reserved.
//

import Foundation

class Problem114Solution {
    func flatten(_ root: TreeNode?) {
        // TODO: finish this
        guard let sureRoot = root else {
            return
        }
        
        // Flatten left
        if let sureRootLeft = sureRoot.left {
            flatten(sureRootLeft)
        }
        
        // Flatten right
        if let sureRootRight = sureRoot.right {
            flatten(sureRootRight)
        }
        
        // Append left and right if applicable
        if let sureRootLeft = sureRoot.left {
            if let sureRootRight = sureRoot.right {
                var leftEnd: TreeNode? = sureRootLeft
                var leftEndPrev: TreeNode? = nil
                
                while leftEnd != nil {
                    leftEndPrev = leftEnd
                    leftEnd = leftEnd?.right
                }
                
                leftEndPrev?.right = sureRootRight
            }
            sureRoot.right = sureRootLeft
            sureRoot.left = nil
        }
    }
}
