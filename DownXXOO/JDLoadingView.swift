//
//  JDLoadingView.swift
//  DownXXOO
//
//  Created by 维农 on 16/6/22.
//  Copyright © 2016年 维农-quan. All rights reserved.
//

import Cocoa
//加载界面的状态，分别是 正在加载，出现错误，内容为空，空闲状态
enum LoadingState {
    case Loading, Error, Empty, Idle
}
class JDLoadingView: NSProgressIndicator {

    
    var currentState: LoadingState? // 当前状态

    override func awakeFromNib() {
        super.awakeFromNib()
        
        wantsLayer = true
        layer?.backgroundColor = NSColor.jDWhiteColor().CGColor
    }
    
    
    // 显示某个状态
    func showState(state: LoadingState) {
        switch state {
        case .Loading:
            hidden = false
            startAnimation(nil)
            currentState = .Loading
            
        case .Error:
            hidden = false
            stopAnimation(nil)
            currentState = .Error
            
        case .Empty:
            hidden = false
            stopAnimation(nil)
            currentState = .Empty
            
        case .Idle:
            hidden = true
            stopAnimation(nil)
            currentState = .Idle
        }
    }
}
