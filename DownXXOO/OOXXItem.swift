//
//  OOXXItem.swift
//  DownXXOO
//
//  Created by 维农 on 16/6/22.
//  Copyright © 2016年 维农-quan. All rights reserved.
//

import Cocoa

class OOXXItem: Mappable {
    
    var current_page: Int = 0

    var status: String?

    var page_count: Int = 0

    var total_comments: Int = 0

    var count: Int = 0

    var comments: [Comments]?
    
    required init?(_ map: Map){
        
    }
    func mapping(map: Map) {
        total_comments <- map["total_comments"]
        status <- map["status"]
        comments <- map["comments"]
        count <- map["count"]
        current_page <- map["current_page"]
        page_count <- map["page_count"]
        
    }
}
class Comments: Mappable {
    required init?(_ map: Map){
        
    }
    func mapping(map: Map) {
        
        comment_date <- map["comment_date"]
        comment_post_ID <- map["comment_post_ID"]
        comment_author_url <- map["comment_author_url"]
        comment_date_gmt <- map["comment_date_gmt"]
        comment_karma <- map["comment_karma"]
        comment_author <- map["comment_author"]
        vote_positive <- map["vote_positive"]
        user_id <- map["user_id"]
        comment_reply_ID <- map["comment_reply_ID"]
        vote_ip_pool <- map["vote_ip_pool"]
        comment_author_email <- map["comment_author_email"]
        text_content <- map["text_content"]
        comment_type <- map["comment_type"]
        comment_ID <- map["comment_ID"]
        comment_author_IP <- map["comment_author_IP"]
        pics <- map["pics"]
        comment_agent <- map["comment_agent"]
        comment_content <- map["comment_content"]
        vote_negative <- map["vote_negative"]
        videos <- map["videos"]
        comment_approved <- map["comment_approved"]
        comment_parent <- map["comment_parent"]
        comment_subscribe <- map["comment_subscribe"]
        
    }
    var comment_date: String?

    var comment_post_ID: String?

    var comment_author_url: String?

    var comment_date_gmt: String?

    var comment_karma: String?

    var comment_author: String?

    var vote_positive: String?

    var user_id: String?

    var comment_reply_ID: String?

    var vote_ip_pool: String?

    var comment_author_email: String?

    var text_content: String?

    var comment_type: String?

    var comment_ID: String?

    var comment_author_IP: String?

    var pics: [String]?

    var comment_agent: String?

    var comment_content: String?

    var vote_negative: String?

    var videos: [String]?

    var comment_approved: String?

    var comment_parent: String?

    var comment_subscribe: String?

}

