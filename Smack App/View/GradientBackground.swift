//
//  GradientBackground.swift
//  Smack App
//
//  Created by El nino Cholo on 2020/08/21.
//  Copyright © 2020 El nino Cholo. All rights reserved.
//

import UIKit

@IBDesignable
class gradientBackground: UIView
{
    
    @IBInspectable var topcolor :UIColor = UIColor.systemBlue
    {
           didSet
           {
            self.setNeedsLayout()
           }
    }
    
    @IBInspectable var bottomColor: UIColor  = UIColor.systemPurple
    {
            didSet
             {
                self.setNeedsLayout()
             }
    }

    override func layoutSubviews()
    {
          let layoutgradient = CAGradientLayer()
        layoutgradient.colors = [topcolor.cgColor, bottomColor.cgColor]
        layoutgradient.startPoint = CGPoint(x: 0, y: 0)
        layoutgradient.endPoint = CGPoint(x: 1, y: 1)
        layoutgradient.frame = self.frame
        self.layer.insertSublayer(layoutgradient, at: 0)
        
        
    }
  
}
