//
//  CornerRadiusButton.swift
//  Utility
//
//  Created by mh53653 on 2/2/17.
//  Copyright © 2017 madan. All rights reserved.
//

import UIKit

@IBDesignable
class CornerRadiusButton: UIButton {
    
    @IBInspectable var cornerRadius : CGFloat = 30.0 {
        didSet{
            setupUI()
        }
    }
    
    override func prepareForInterfaceBuilder() {
        setupUI()
    }
    
    func setupUI(){
         layer.cornerRadius = cornerRadius;
    }
    
}
