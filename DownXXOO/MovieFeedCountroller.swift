//
//  MovieFeedCountroller.swift
//  DownXXOO
//
//  Created by 维农 on 16/6/22.
//  Copyright © 2016年 维农-quan. All rights reserved.
//

import Cocoa

class MovieFeedCountroller: NSViewController {

    
    var currentPage = 1//当前页面
    var items = [Posts]()//帖子列表
    var recentResp = RecentItem?()//数据回包
    let getJiandanAPI = GetJianDanApi()//获取api
    let format = NSDateFormatter()//时间格式化
    
    override func viewDidLoad() {
        super.viewDidLoad()
        // Do view setup here.
        getJiandanAPI.loadVideo(currentPage) { (response) in
            
        }
    }
    
}
