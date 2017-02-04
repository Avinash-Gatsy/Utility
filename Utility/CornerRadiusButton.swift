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
    
    @IBInspectable var startColor: UIColor = UIColor.red
    @IBInspectable var endColor: UIColor = UIColor.green
    @IBInspectable var cornerRadius : CGFloat = 30.0
    override func draw(_ rect: CGRect) {

        let path = UIBezierPath(roundedRect: rect,
                                byRoundingCorners: UIRectCorner.allCorners,
                                cornerRadii: CGSize(width: cornerRadius, height: cornerRadius))
        path.addClip()
        
        let context = UIGraphicsGetCurrentContext()
        let colors = [startColor.cgColor, endColor.cgColor]
        let colorSpace = CGColorSpaceCreateDeviceRGB()
        let colorLocations:[CGFloat] = [0.0, 1.0]
        let gradient = CGGradient(colorsSpace: colorSpace,
                              colors: colors as CFArray,
                              locations: colorLocations)
    
        let startPoint = CGPoint.zero
        let endPoint = CGPoint(x:path.bounds.width, y:path.bounds.height)
        context?.drawLinearGradient(gradient!,
                                start: startPoint,
                                end: endPoint,
                                options: CGGradientDrawingOptions(rawValue: 0))
    }
    
}
