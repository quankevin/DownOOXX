//
//  JianDanScrollView.swift
//  DownXXOO
//
//  Created by 维农 on 16/6/21.
//  Copyright © 2016年 维农-quan. All rights reserved.
//

import Cocoa

class JianDanScrollView: NSScrollView {

    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        
        let layer = CALayer()
        layer.borderColor = NSColor.windowBackgroundColor().CGColor
        layer.borderWidth = 1
        layer.frame = NSRect(x: 0,y: dirtyRect.size.height - 1,width:dirtyRect.size.width,height:1)
        self.layer?.addSublayer(layer)
    }
    
}
