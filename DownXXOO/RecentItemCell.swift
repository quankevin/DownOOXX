//
//  RecentItemCell.swift
//  DownXXOO
//
//  Created by 维农 on 16/6/22.
//  Copyright © 2016年 维农-quan. All rights reserved.
//

import Cocoa
import Kingfisher

class RecentItemCell: NSTableCellView {

    @IBOutlet weak var feedImageView: NSImageView!
    
    @IBOutlet weak var feedTitleText: NSTextField!
    
    @IBOutlet weak var feedWhoText: NSTextField!
    
    @IBOutlet weak var readCheck: NSButton!
    
    
    @IBOutlet weak var feedTimeText: NSTextField!
    
    private var item: Posts?
    
    private let cursor = NSCursor.pointingHandCursor()
    private var trackingArea:NSTrackingArea?
    private var mouseInside = false {
        didSet {
            
        }
    }
    
    
    override func drawRect(dirtyRect: NSRect) {
        super.drawRect(dirtyRect)

        // Drawing code here.
    }
    class func view(tableView: NSTableView, owner: AnyObject?,subject: AnyObject?) -> NSView {
        let view = tableView.makeViewWithIdentifier("recentCellIdentifier", owner: owner) as! RecentItemCell
        
        if let item = subject as? Posts {
            view.setItem(item)
        }
        return view
    }
    
    override func awakeFromNib() {
        super.awakeFromNib()
        commonInit()
    }
    
    private func commonInit() {
        wantsLayer = true
        feedImageView.wantsLayer = true
        feedImageView.layer?.masksToBounds = true
        feedImageView.layer?.cornerRadius = 3
    
    }
    
    override func prepareForReuse() {
        super.prepareForReuse()
        trackingArea = nil
        mouseInside = false
    }
    
    override func resetCursorRects() {
        addCursorRect(bounds, cursor: cursor)
        cursor.set()
    }
    
    private func setItem(item: Posts?){
        guard let item  = item else {
            return
        }
        
        self.item = item
        updateUI()
    }
    
    private func updateUI (){
        guard let item = item else {
            return
        }
        layer?.backgroundColor = mouseInside ? NSColor.jDHighlightColor().CGColor : NSColor.jDWhiteColor().CGColor
        readCheck.hidden = true
        feedTitleText.stringValue = item.textTitle
        feedTimeText.stringValue = item.date
        feedWhoText.stringValue = item.textWho
        feedImageView.kf_setImageWithURL(NSURL(string: item.imageString)!)
    }
    
    
    
}
