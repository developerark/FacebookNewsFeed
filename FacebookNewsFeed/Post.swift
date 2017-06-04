//
//  Post.swift
//  FacebookNewsFeed
//
//  Created by Aswin Raj Kharel on 6/4/17.
//  Copyright © 2017 Aswin Raj Kharel. All rights reserved.
//

import UIKit

class Post{
    var posterName: String?
    var posterImage: UIImage?
    var postImage: UIImage?
    var postContent: String?
    var date: String?
    var location: String?
    var likes: Int?
    var comments: Int?
    
    init(posterName: String, posterImage: UIImage, postImage: UIImage, postContent: String, date: String, location: String, likes: Int, comments: Int){
        self.posterName = posterName
        self.posterImage = posterImage
        self.postImage = postImage
        self.postContent = postContent
        self.date = date
        self.location = location
        self.likes = likes
        self.comments = comments
    }
}
