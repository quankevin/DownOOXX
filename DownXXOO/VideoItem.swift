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
        status <- map["status"]
        current_page <- map["current_page"]
        page_count <- map["page_count"]
        total_comments <- map["total_comments"]
        count <- map["count"]
        comments <- map["comments"]

    }
}

class Videos: Mappable {
    required init?(_ map: Map){
        
    }
    func mapping(map: Map) {
        
        public_type <- map["public_type"]
        thumbnail <- map["thumbnail"]
        title <- map["title"]
        link <- map["link"]
        tags <- map["tags"]
        duration <- map["duration"]
        thumbnail_v2 <- map["thumbnail_v2"]
        copyright_type <- map["copyright_type"]
        video_source <- map["video_source"]
        up_count <- map["up_count"]
        category <- map["category"]
        state <- map["state"]
        paid <- map["paid"]
        id <- map["id"]
        user <- map["user"]
        player <- map["player"]
        down_count <- map["down_count"]
        view_count <- map["view_count"]
        operation_limit <- map["operation_limit"]
        streamtypes <- map["streamtypes"]
        favorite_count <- map["favorite_count"]
        published <- map["published"]
        comment_count <- map["comment_count"]
        is_panorama <- map["is_panorama"]
        jdescription <- map["description"]
        
    }
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

    var jdescription: String?

}

class User: Mappable {
    required init?(_ map: Map){
        
    }
    func mapping(map: Map) {
        id <- map["id"]
        name <- map["name"]
        link <- map["link"]
        
    }
    var id: String?

    var name: String?

    var link: String?

}

