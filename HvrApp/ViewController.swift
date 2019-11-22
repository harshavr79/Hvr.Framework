//
//  ViewController.swift
//  HvrApp
//
//  Created by Harshavardhana Reddy on 11/23/19.
//  Copyright © 2019 Harshavardhana Reddy. All rights reserved.
//

import UIKit
import HvrKit

class ViewController: HvrViewController {
    var colors: [UIColor] = [.red, .green, .blue, .orange, .purple]
    var currentIndex = 0

    override func viewDidLoad() {
        super.viewDidLoad()
        changeBackground(withColor: colors[currentIndex])
        self.view.addGestureRecognizer(UITapGestureRecognizer(target: self, action: #selector(handleClick)))
    }
    
    @objc func handleClick() {
        currentIndex += 1
        if !colors.indices.contains(currentIndex) {
            currentIndex = 0
        }
        changeBackground(withColor: colors[currentIndex])
    }
}

