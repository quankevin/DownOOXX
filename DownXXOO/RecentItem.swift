//
//  RecentItem.swift
//  DownXXOO
//
//  Created by 维农 on 16/6/21.
//  Copyright © 2016年 维农-quan. All rights reserved.
//

import Cocoa


class RecentItem: Mappable {
    
    
    var posts: [Posts]?

    var status: String?

    var count_total: Int = 0

    var pages: Int = 0

    var count: Int = 0
    
    required init?(_ map: Map){
        
    }
    func mapping(map: Map) {
        posts <- map["posts"]
        status <- map["status"]
        pages <- map["pages"]
        count <- map["count"]
        count_total <- map["count_total"]
    }
}



class Posts: Mappable {

    var author: Author?

    var custom_fields: Custom_Fields?

    var id: Int = 0

    var title: String

    var date: String

    var comment_count: Int = 0

    var tags: [Tags]?

    var url: String?
    required init?(_ map: Map){
        self.title = ""
        self.date = ""
    }
    func mapping(map: Map) {
        id <- map["id"]
        author <- map["author"]
        custom_fields <- map["custom_fields"]
        title <- map["title"]
        date <- map["date"]
        comment_count <- map["comment_count"]
        tags <- map["tags"]
        url <- map["url"]
    }
}

extension Posts{
    var textTitle: String {
        return self.title == "" ? "" :self.title
    }
    
    var textWho :String {
        return (self.author?.nickname)! + "@" + (self.tags?.first?.title)!
    }
    
    var imageString: String {
        return (self.custom_fields?.thumb_c?.first)!
    }
    var visitUrl: String{
        return self.url!
    }
}


class Custom_Fields: Mappable {

    var thumb_c: [String]?
    required init?(_ map: Map){
        
    }
    func mapping(map: Map) {
        thumb_c <- map["thumb_c"]
    }
}

class Author: Mappable {

    var slug: String?

    var first_name: String?

    var id: Int = 0

    var nickname: String?

    var last_name: String?

    var jdescription: String?

    var name: String?

    var url: String?
    required init?(_ map: Map){
        
    }
    func mapping(map: Map) {
        id <- map["id"]
        slug <- map["slug"]
        first_name <- map["first_name"]
        jdescription <- map["description"]
        name <- map["name"]
        last_name <- map["last_name"]
        nickname <- map["nickname"]
        first_name <- map["first_name"]
    }
}

class Tags: Mappable {

    var id: Int = 0

    var slug: String?

    var title: String?

    var jdescription: String?

    var post_count: Int = 0
    required init?(_ map: Map){
        
    }
    func mapping(map: Map) {
        id <- map["id"]
        slug <- map["slug"]
        title <- map["title"]
        jdescription <- map["description"]
        post_count <- map["post_count"]
    }
}

