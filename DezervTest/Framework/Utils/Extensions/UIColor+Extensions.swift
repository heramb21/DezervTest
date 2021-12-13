//
//  UIColor+Extensions.swift
//  PaytmInsiderTest
//
//  Created by Heramb Joshi on 8/4/20.
//  Copyright © 2020 Heramb Joshi. All rights reserved.
//

import Foundation
import UIKit

extension UIColor {
    
    func pitPrimaryColor() -> UIColor {
        return pitBlueColor()
    }
    
    func pitSystemBarColor() -> UIColor {
        return colorWith(r: 239, g: 239, b: 249)
    }
    
    func pitHighlightColor() -> UIColor {
        return pitBlueColorWithTransparency()
    }
    
     func pitLightBGColor() -> UIColor {
        return colorWith(r: 248, g: 252, b: 255)
    }
    
    func pitGrayColor() -> UIColor {
        return colorWith(r: 198, g: 198, b: 202)
    }
    
    func pitBackgroundColor() -> UIColor {
        return UIColor.white
    }
    
    func pitBlueColor() -> UIColor {
        return colorWith(r: 17, g: 138, b: 215)
    }
    
    func pitBlueColorWithTransparency() -> UIColor {
        return colorWith(r: 17, g: 138, b: 215, a: 0.1)
    }
    
    func pitDarkGrey() -> UIColor {
        return colorWith(r: 76, g: 76, b: 76)
    }
    
    func pitTealColor() -> UIColor {
        return colorWith(r: 114, g: 181, b: 223)
    }
    
    func pitYellowColor() -> UIColor {
        return colorWith(r: 234, g: 158, b: 0)
    }
    
    func pitRedColor() -> UIColor {
        return colorWith(r: 228, g: 113, b: 111)
    }
    
    func colorWith(r: CGFloat, g: CGFloat, b: CGFloat, a: CGFloat = 1.0) -> UIColor {
        return UIColor(red: r / 255.0, green: g / 255.0, blue: b / 255.0, alpha: a)
    }
}
