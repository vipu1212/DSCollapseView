//
//  ViewController.swift
//  DSCollapseView
//
//  Created by Divyansh Singh on 25/02/16.
//  Copyright © 2016 Servify. All rights reserved.
//

import UIKit
import DSCollapseView
class ViewController: UIViewController {
    
    @IBOutlet weak var collapseView: DSCollapseView!
    
    @IBOutlet weak var subViewBottomContraint : NSLayoutConstraint!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        self.collapseView.subViewConstraint = self.subViewBottomContraint
        self.collapseView.movementType = MovementType.AlongWithFaster
        let appearingView = UIView()
        appearingView.backgroundColor = UIColor(red: 139/255, green: 84.0/255, blue: 153.0/255, alpha: 1)
        self.collapseView.appearingView = appearingView
    }
}