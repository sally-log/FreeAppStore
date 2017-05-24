//
//  Review.swift
//  FreeAppStore
//
//  Created by sally on 2017. 5. 24..
//  Copyright © 2017년 sally. All rights reserved.
//

import SwiftyJSON

fileprivate struct JsonNames {
    static let AUTHOR = "author"
    static let NAME = "name"
    static let RATING = "im:rating"
    static let TITLE = "title"
    static let CONTENT = "content"
    static let VERSION = "im:version"
    static let LABEL = "label"
}

class Review {

    let name: String
    let rating: Int
    let title: String
    let content: String
    let version: String
    
    init(_ json: JSON) {
        name = json[JsonNames.AUTHOR][JsonNames.NAME][JsonNames.LABEL].stringValue
        rating = json[JsonNames.RATING][JsonNames.LABEL].intValue
        title = json[JsonNames.TITLE][JsonNames.LABEL].stringValue
        content = json[JsonNames.CONTENT][JsonNames.LABEL].stringValue
        version = json[JsonNames.VERSION][JsonNames.LABEL].stringValue
    }
}