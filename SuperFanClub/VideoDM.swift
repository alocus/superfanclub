//
//  MediaDM.swift
//  SuperFanClub
//
//  Created by Michael Dunn on 2016-09-13.
//  Copyright © 2016 Michael Dunn. All rights reserved.
//

import Foundation

class VideoDM{
    
    private var _imageURL :String!
    private var _videoURL:String!
    private var _videotitle:String!
    
    
    var imageURL: String{
        return _imageURL
    }
    
    var videoURL: String{
        return _videoURL
    }
    
    var videoTitle:String {
        return _videotitle
    }
    
    
    init(imgURL:String, videoURL:String, videoTitle:String) {
        _imageURL = imgURL
        _videoURL = videoURL
        _videotitle = videoTitle
    }
    
    
}
