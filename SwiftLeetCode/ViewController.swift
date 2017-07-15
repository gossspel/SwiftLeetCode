//
//  ViewController.swift
//  SwiftLeetCode
//
//  Created by Sunny Chan on 7/11/17.
//  Copyright © 2017 sunnystudio. All rights reserved.
//

import UIKit

class ViewController: UIViewController {

    override func viewDidLoad() {
        super.viewDidLoad()
        let root: TreeNode = TreeNode(1)
        root.left = TreeNode(2)
        root.right = TreeNode(5)
        root.left?.left = TreeNode(3)
        root.left?.right = TreeNode(4)
        root.right?.right = TreeNode(6)
        let solution: Problem114Solution = Problem114Solution()
        solution.flatten(root)
        print("sunny")
        // Do any additional setup after loading the view, typically from a nib.
    }

    override func didReceiveMemoryWarning() {
        super.didReceiveMemoryWarning()
        // Dispose of any resources that can be recreated.
    }


}

