//
//  NSColor+JianDan.swift
//  DownXXOO
//
//  Created by 维农 on 16/6/22.
//  Copyright © 2016年 维农-quan. All rights reserved.
//

import Cocoa

extension NSColor{
    class func jDWhiteColor() -> NSColor {
        return NSColor.whiteColor()
    }
    
    class func jDHighlightColor() -> NSColor {
        return NSColor(calibratedRed: 249 / 255, green: 249 / 255, blue: 249 / 255, alpha: 1)
    }
    
    class func jDOrangeColor() -> NSColor {
        return NSColor(calibratedRed: 228 / 255, green: 81 / 255, blue: 39 / 255, alpha: 1)
    }
    
    class func jDGrayColor() -> NSColor {
        return NSColor(calibratedRed: 153 / 255, green: 153 / 255, blue: 153 / 255, alpha: 1)
    }
    
    class func jDLightGrayColor() -> NSColor {
        return NSColor(calibratedRed: 204 / 255, green: 204 / 255, blue: 208 / 255, alpha: 1)
    }
}
