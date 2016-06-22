//
//  PicItem.swift
//  DownXXOO
//
//  Created by 维农 on 16/6/22.
//  Copyright © 2016年 维农-quan. All rights reserved.
//

import Cocoa

class PicItem: Mappable {
    
    var status: String?

    var current_page: Int = 0

    var page_count: Int = 0

    var total_comments: Int = 0

    var count: Int = 0

    var comments: [Comments]?
    
    required init?(_ map: Map){
        
    }
    func mapping(map: Map) {
        
    }
}