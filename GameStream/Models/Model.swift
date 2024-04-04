//
//  Model.swift
//  GameStream
//
//  Created by Victor Hugo on 03/04/24.
//

import Foundation

struct GamesModel:Codable {
    var games:[GameModel]
}

struct GameModel:Codable {
    var title:String
    var studio:String
    var contentRaiting:String
    var publicationYear:String
    var description:String
    var platforms:[String]
    var tags:[String]
    var videosUrls:VideoUrlModel
    var galleryImages:[String]
}

struct VideoUrlModel:Codable {
    var mobile:String
    var tablet:String
}
