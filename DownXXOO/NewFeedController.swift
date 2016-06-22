//
//  NewFeedController.swift
//  DownXXOO
//
//  Created by 维农 on 16/6/20.
//  Copyright © 2016年 维农-quan. All rights reserved.
//

import Cocoa

class NewFeedController: NSViewController ,NSUserNotificationCenterDelegate{
    
    
    @IBOutlet weak var scrollView: JianDanScrollView!

    @IBOutlet weak var tableView: NSTableView!
    
    @IBOutlet weak var reload: JianDanButton!
    
    @IBOutlet weak var lastUpdateTimeText: NSTextField!
    
    @IBOutlet weak var loadingView: JDLoadingView!
    
    var currentPage = 1//当前页面
    var items = [Posts]()//帖子列表
    var recentResp = RecentItem?()//数据回包
    let getJiandanAPI = GetJianDanApi()//获取api
    let format = NSDateFormatter()//时间格式化
    
    override func viewDidLoad() {
        super.viewDidLoad()
        view.wantsLayer = true
        view.layer?.backgroundColor = NSColor.jDWhiteColor().CGColor
        
        format.dateFormat = "yyyy-MM-dd HH:mm:ss"
        lastUpdateTimeText.stringValue = ""
        loadingView.showState(.Loading)
        NSUserNotificationCenter.defaultUserNotificationCenter().delegate = self
        
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(reloadData), name: "reload", object: nil)
        NSNotificationCenter.defaultCenter().addObserver(self, selector: #selector(loadMore), name: "loadMore", object: nil)
        NSNotificationCenter.defaultCenter().postNotificationName("reload", object: nil)
    }
    
    
    func loadMore(){
        self.currentPage += 1
        self.loadData(self.currentPage)
    }
    func reloadData(){
        lastUpdateTimeText.stringValue = "更新时间：\(format.stringFromDate(NSDate()))"
        self.currentPage = 1
        self.loadData(self.currentPage)
    }
    
    func loadData(page: Int) {
        getJiandanAPI.loadRecentPost(currentPage) { (response ) in
            
            if response is RecentItem{
                let data = response as! RecentItem
                if self.currentPage == 1{
                    self.items.removeAll()
                }
                data.posts?.forEach{self.items.append($0)}
                self.loadingView.showState(self.items.count>0 ? .Idle : .Empty)
                self.updateUI()
            }else{
                return self.loadingView.showState(.Error)
            }
        }
        
    }
    @IBAction func clickReload(sender: JianDanButton) {
        self.reloadData()
    }
    func updateUI() -> Void {
        self.tableView.reloadData()
        
    }
}
extension NewFeedController:NSTableViewDataSource{
    func numberOfRowsInTableView(tableView: NSTableView) -> Int {
        return items.count
    }
    
    func tableView(tableView: NSTableView, viewForTableColumn tableColumn: NSTableColumn?, row: Int) -> NSView? {
//        loadMoreIfNeeded(row)
        return RecentItemCell.view(tableView, owner: self, subject: items[row])
    }
    
    private func loadMoreIfNeeded(row: Int) {
        if items.count - row == 1 {
            NSNotificationCenter.defaultCenter().postNotificationName("loadMore", object: nil)
        }
    }
    
}

extension NewFeedController:NSTableViewDelegate{
    func tableView(tableView: NSTableView, heightOfRow row: Int) -> CGFloat {
        return 80
    }
    
    func tableView(tableView: NSTableView, shouldSelectRow row: Int) -> Bool {
        if loadingView.currentState != LoadingState.Idle {
            return true
        }
        OpenUrlAction.perform(withPath: items[row].visitUrl)
        return true
    }
}


