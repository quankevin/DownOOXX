//
//  ViewController.swift
//  DownXXOO
//
//  Created by 维农 on 16/6/20.
//  Copyright © 2016年 维农-quan. All rights reserved.
//

import Cocoa


class TabViewController: NSTabViewController {
    
    @IBOutlet weak var newFeedItem: NSTabViewItem!
    
    @IBOutlet weak var borindItem: NSTabViewItem!
    
    @IBOutlet weak var talkItem: NSTabViewItem!
    
    @IBOutlet weak var movieItem: NSTabViewItem!
    
    @IBOutlet weak var xxooItem: NSTabViewItem!
    

    
    override func viewDidLoad() {
        super.viewDidLoad()
//        if NSUserDefaults.standardUserDefaults().boolForKey("xxooValue") {
//            xxooItem.tabView?.hidden = false;
//        }else{
//            xxooItem.tabView?.hidden = true;
//        }
        // Do any additional setup after loading the view.
        
        
        
    }

    
    
    
    override var representedObject: AnyObject? {
        didSet {
        // Update the view, if already loaded.
        }
    }
}