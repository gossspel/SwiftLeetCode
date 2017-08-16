//
//  problems_131_to_140.swift
//  SwiftLeetCode
//
//  Created by Sunny Chan on 8/16/17.
//  Copyright © 2017 sunnystudio. All rights reserved.
//

import Foundation

class Problem133Solution {
    class func cloneGraph(_ node: UndirectedGraphNode?) -> UndirectedGraphNode? {
        guard let sureNode = node else {
            return nil
        }
        
        var map: [UndirectedGraphNode: UndirectedGraphNode] = [sureNode: UndirectedGraphNode(sureNode.label)]
        var queue: [UndirectedGraphNode] = []
        queue.append(sureNode)
        
        while !queue.isEmpty {
            let currentNode: UndirectedGraphNode = queue.removeFirst()
            for nb in currentNode.neighbors {
                if let sureNBClone = map[nb] {
                    map[currentNode]?.neighbors.append(sureNBClone)
                } else {
                    map[nb] = UndirectedGraphNode(nb.label)
                    map[currentNode]?.neighbors.append(nb)
                    queue.append(nb)
                }
            }
        }
        
        if let sureCloneNode = map[sureNode] {
            return sureCloneNode
        } else {
            return nil
        }
    }
}
