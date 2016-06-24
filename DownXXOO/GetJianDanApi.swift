//
//  GetJianDanApi.swift
//  DownXXOO
//
//  Created by 维农 on 16/6/20.
//  Copyright © 2016年 维农-quan. All rights reserved.
//

import Cocoa
import Alamofire
import SwiftyJSON

class GetJianDanApi {
    typealias CallBack = (AnyObject?)->Void
    // http://i.jandan.net/?oxwlxojflwblxbsapi=get_recent_posts&include=url,date,tags,author,title,comment_count,custom_fields&custom_fields=thumb_c,views&dev=1&page 新鲜事
    // http://i.jandan.net/?oxwlxojflwblxbsapi=jandan.get_pic_comments 无聊图
    // http://i.jandan.net/?oxwlxojflwblxbsapi=jandan.get_duan_comments 段子
    // http://i.jandan.net/?oxwlxojflwblxbsapi=jandan.get_video_comments 视频
    // http://i.jandan.net/?oxwlxojflwblxbsapi=jandan.get_ooxx_comments 妹子图
    
    
    let API_RECENT_POST = "http://i.jandan.net/?oxwlxojflwblxbsapi=get_recent_posts&include=url,date,tags,author,title,comment_count,custom_fields&custom_fields=thumb_c,views&dev=1"
    let API_PIC_COMMENT = "http://i.jandan.net/?oxwlxojflwblxbsapi=jandan.get_pic_comments"
    let API_DUAN_COMMENT = "http://i.jandan.net/?oxwlxojflwblxbsapi=jandan.get_duan_comments"
    let API_VIDEO_COMMENT = "http://i.jandan.net/?oxwlxojflwblxbsapi=jandan.get_video_comments"
    let API_OOXX_COMMENT = "http://i.jandan.net/?oxwlxojflwblxbsapi=jandan.get_ooxx_comments"
    
    func loadOOXX(page:Int,callback:CallBack) -> Void {
        let url = API_OOXX_COMMENT + "&page=" + String(page)
        print(url)
        //        Alamofire.request(.GET, url).responseObject { (response: Response<RecentItem,NSError>) in
        //            switch response.result{
        //            case .Failure(let error):
        //                callback(error)
        //            case .Success:
        //                print("Load Data Success")
        //                let o = response.result.value
        //                callback(o)
        //            }
        //        }
        Alamofire.request(.GET, url).responseObject { (response: Response<OOXXItem,NSError>) in
            switch response.result{
            case .Failure(let error):
                print("Load Data Failed")
                callback(error)
            case .Success:
//                print("Load Data Success====================================s")
                let o = response.result.value
                callback(o)
//                let json = JSON(o!)
//                print(json)
                //                let model = RecentItem.parse(dict: response.result.value)
//                print("Load Data Success====================================e")
            }
            
        }
    }
    func loadVideo(page:Int,callback:CallBack) -> Void {
        let url = API_VIDEO_COMMENT + "&page=" + String(page)
        print(url)
        //        Alamofire.request(.GET, url).responseObject { (response: Response<RecentItem,NSError>) in
        //            switch response.result{
        //            case .Failure(let error):
        //                callback(error)
        //            case .Success:
        //                print("Load Data Success")
        //                let o = response.result.value
        //                callback(o)
        //            }
        //        }
        Alamofire.request(.GET, url).responseObject { (response: Response<VideoItem,NSError>) in
            switch response.result{
            case .Failure(let error):
                print("Load Data Failed")
                callback(error)
            case .Success:
//                print("Load Data Success====================================s")
                let o = response.result.value
                callback(o)
//                let json = JSON(o!)
//                print(json)
                //                let model = RecentItem.parse(dict: response.result.value)
//                print("Load Data Success====================================e")
            }
            
        }
    }
    
    func loadDuan(page:Int,callback:CallBack) -> Void {
        let url = API_DUAN_COMMENT + "&page=" + String(page)
        print(url)
        //        Alamofire.request(.GET, url).responseObject { (response: Response<RecentItem,NSError>) in
        //            switch response.result{
        //            case .Failure(let error):
        //                callback(error)
        //            case .Success:
        //                print("Load Data Success")
        //                let o = response.result.value
        //                callback(o)
        //            }
        //        }
        Alamofire.request(.GET, url).responseObject { (response: Response<DuanItem,NSError>) in
            switch response.result{
            case .Failure(let error):
                print("Load Data Failed")
                callback(error)
            case .Success:
//                print("Load Data Success====================================s")
                let o = response.result.value
                callback(o)
//                let json = JSON(o!)
//                print(json)
                //                let model = RecentItem.parse(dict: response.result.value)
//                print("Load Data Success====================================e")
            }
            
        }
    }
    func loadPic(page:Int,callback:CallBack) -> Void {
        let url = API_PIC_COMMENT + "&page=" + String(page)
        print(url)
//        Alamofire.request(.GET, url).responseObject { (response: Response<RecentItem,NSError>) in
//            switch response.result{
//            case .Failure(let error):
//                callback(error)
//            case .Success:
//                print("Load Data Success")
//                let o = response.result.value
//                callback(o)
//            }
//        }
        Alamofire.request(.GET, url).responseObject { (response: Response<PicItem,NSError>) in
            switch response.result{
            case .Failure(let error):
//                print("Load Data Failed")
                callback(error)
            case .Success:
//                print("Load Data Success====================================s")
                let o = response.result.value
                callback(o)
//                let json = JSON(o!)
//                print(json)
                //                let model = RecentItem.parse(dict: response.result.value)
//                print("Load Data Success====================================e")
            }
            
        }
    }
    
    func loadRecentPost(page:Int,callback:CallBack) {
        
        let url = API_RECENT_POST + "&page=" + String(page)

        Alamofire.request(.GET, url).responseObject { (response: Response<RecentItem,NSError>) in
            switch response.result{
            case .Failure(let error):
                callback(error)
            case .Success:
                print("Load Data Success")
                let o = response.result.value
                callback(o)
            }
        }
    }
    
}
