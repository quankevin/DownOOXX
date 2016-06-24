//
//  DuanItem.swift
//  DownXXOO
//
//  Created by 维农 on 16/6/22.
//  Copyright © 2016年 维农-quan. All rights reserved.
//

import Cocoa

class DuanItem: Mappable {
    
    
    var status: String?

    var current_page: Int = 0

    var page_count: Int = 0

    var total_comments: Int = 0

    var count: Int = 0

    var comments: [Comments]?
    
    required init?(_ map: Map){
        
    }
    func mapping(map: Map) {
        
        status <- map["status"]
        current_page <- map["current_page"]
        page_count <- map["page_count"]
        total_comments <- map["total_comments"]
        count <- map["count"]
        comments <- map["comments"]
    }
}