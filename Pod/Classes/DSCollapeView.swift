//
//  DSCollape.swift
//  DSCollapseView
//
//  Created by Divyansh Singh on 25/02/16.
//  Copyright © 2016 Divyansh. All rights reserved.
//

import UIKit

public enum MovementType {
    case AlongWith
    case Stationary
    case AlongWithFaster
    case AlongWithSlower
}

public class DSCollapseView : UIView {

    public lazy var relativeMovement = CGFloat(1.5)

    public lazy var minHeight : CGFloat = 50

    public lazy var movementType : MovementType = .Stationary

    var maxConstraitLimit : CGFloat?

    lazy var maxHeight : CGFloat = 200

    public var subViewConstraint : NSLayoutConstraint? {
        willSet {
            if newValue != nil {
                self.maxConstraitLimit = newValue!.constant
            }
        }
    }

    public var appearingView : UIView? {
        didSet {
            self.setupAppearingView()
        }
    }

    required public init(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)!
        self.clipsToBounds = true
        self.addGestureRecognizer(UIPanGestureRecognizer(target: self, action: #selector(DSCollapseView.onViewDragged(gesture:))))
        self.maxHeight = self.frame.size.height

        if subViewConstraint != nil {
            self.maxConstraitLimit = self.subViewConstraint!.constant
        }
    }


    func setupAppearingView() {
        if self.appearingView != nil {
            self.appearingView!.frame = self.frame
            self.appearingView!.frame.size.height = self.minHeight
            self.appearingView!.alpha = 0
            self.addSubview(self.appearingView!)
        }
    }


    @objc func onViewDragged(gesture : UIPanGestureRecognizer) {

        let translation = gesture.translation(in: gesture.view)

        //Reset to Maximum Height
        if gesture.view!.frame.size.height >= self.maxHeight && translation.y >= 0 {
            UIView.animate(withDuration: 0.4, animations: {
                self.frame.size.height = self.maxHeight

                if self.subViewConstraint != nil {
                    self.subViewConstraint!.constant = self.maxConstraitLimit!
                }
            })
            return
        }

        //Reset to Minimum Height
        if gesture.view!.frame.size.height <= self.minHeight && translation.y <= 0 {
            UIView.animate(withDuration: 0.4, animations: {
                self.frame.size.height = self.minHeight
                self.appearingView?.alpha = 1
            })
            return
        } else if gesture.view!.frame.size.height >= self.minHeight && translation.y >= 0 {
            self.appearingView?.alpha = 0
        }

        // Tranlsate the collapse View
        self.frame.size.height += translation.y

        // Handle Constraints
        if subViewConstraint != nil {
            if self.movementType == .AlongWithFaster {
                self.subViewConstraint!.constant += translation.y * self.relativeMovement
            } else if self.movementType == .AlongWithSlower {
                self.subViewConstraint!.constant += translation.y / self.relativeMovement
            } else if self.movementType == .AlongWith {
                self.subViewConstraint!.constant += translation.y
            }
        }

        // RESET POINT
        gesture.setTranslation(CGPoint.zero, in: gesture.view)
    }
}