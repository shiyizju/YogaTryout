//
//  ViewController.swift
//  YogaTryout
//
//  Created by Quan Xiaosha on 12/23/18.
//  Copyright © 2018 Quan Xiaosha. All rights reserved.
//

import UIKit
import YogaKit

class ViewController: UIViewController {

    lazy var container: UIView = {
        let v = UIView()
        v.backgroundColor = .lightGray
        return v
    }()
    
    override func viewDidLoad() {
        
        super.viewDidLoad()
        
        container.configureLayout { (layout) in
            layout.isEnabled = true
            layout.flexDirection = .row
            layout.top = 100
            layout.width = YGValue(UIScreen.main.bounds.width)
            layout.height = 100
        }
        view.addSubview(container)
        
        let image = UIView()
        image.backgroundColor = .blue
        image.configureLayout{ (layout)  in
            layout.isEnabled = true
            layout.width = 80
            layout.height = 80
        }
        container.addSubview(image)
        
        let label = UILabel()
        label.backgroundColor = .red
        label.numberOfLines = 0
        label.text = "abcdefghijklmnopqrstuvwxyzABCDEFGHIJKLMNOPQRSTUVWXYZ"
        label.configureLayout{ (layout)  in
            layout.isEnabled = true
            layout.height = 100
        }
        container.addSubview(label)
        
        self.view.setNeedsLayout()
    }

    override func viewDidLayoutSubviews() {
        super.viewDidLayoutSubviews()
        container.yoga.applyLayout(preservingOrigin: true);
    }
}

