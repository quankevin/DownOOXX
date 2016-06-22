//
//  VideoItem.swift
//  DownXXOO
//
//  Created by 维农 on 16/6/22.
//  Copyright © 2016年 维农-quan. All rights reserved.
//

import Cocoa

class VideoItem: Mappable {
    
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

class Videos: NSObject {

    var public_type: String?

    var thumbnail: String?

    var title: String?

    var link: String?

    var tags: String?

    var duration: String?

    var thumbnail_v2: String?

    var copyright_type: String?

    var video_source: String?

    var up_count: String?

    var category: String?

    var state: String?

    var paid: Int = 0

    var id: String?

    var user: User?

    var down_count: String?

    var player: String?

    var view_count: Int = 0

    var operation_limit: [String]?

    var streamtypes: [String]?

    var favorite_count: String?

    var published: String?

    var comment_count: String?

    var is_panorama: String?

    var description: String?

}

class User: NSObject {

    var id: String?

    var name: String?

    var link: String?

}

