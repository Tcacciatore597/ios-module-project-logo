//
//  LogoView.swift
//  Logo
//
//  Created by Thomas Cacciatore on 1/22/20.
//  Copyright © 2020 Thomas Cacciatore. All rights reserved.
//

import UIKit

class LogoView: UIView {

    private let logoBGColor = UIColor.red
    private let logoBorderColor = UIColor.black
    private let borderWidth: CGFloat = 2.0
    
    
    // Only override draw() if you perform custom drawing.
    // An empty implementation adversely affects performance during animation.
    override func draw(_ rect: CGRect) {
        
        let center = CGPoint(x: rect.size.width / 2.0, y: rect.size.height / 2.0)
        
        if let context = UIGraphicsGetCurrentContext() {
            
            context.addEllipse(in: rect)
            context.setFillColor(logoBGColor.cgColor)
            context.fillPath()
            
            context.addEllipse(in: CGRect(x: rect.origin.x + borderWidth / 2.0, y: rect.origin.y + borderWidth / 2.0, width: rect.size.width - borderWidth, height: rect.size.height - borderWidth))
//            context.setStrokeColor(logoBorderColor.cgColor)
//            context.setLineWidth(borderWidth)
            context.strokePath()
            
            let horizontalLineStart = CGPoint(x: 0.0, y: center.y + 0.25 * rect.size.height)
            context.setStrokeColor(UIColor.white.cgColor)
            context.beginPath()
            context.move(to: horizontalLineStart)
            context.setLineWidth(0.05 * rect.size.height)
            context.addLine(to: CGPoint(x: rect.size.width, y: center.y + 0.25 * rect.size.height))
            context.strokePath()
            
            let verticalLineStart = CGPoint(x: center.x - 0.25 * rect.size.width, y: 0.0)
            context.setStrokeColor(UIColor.white.cgColor)
            context.beginPath()
            context.move(to: verticalLineStart)
            context.setLineWidth(0.15 * rect.size.width)
            context.addLine(to: CGPoint(x: center.x - 0.25 * rect.size.width, y: rect.size.height))
            context.strokePath()
            

        }
        
       
        
        
    
    }
    

}
