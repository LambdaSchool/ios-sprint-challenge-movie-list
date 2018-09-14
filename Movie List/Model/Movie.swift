//
//  Movie.swift
//  Movie List
//
//  Created by Madison Waters on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    
    let title: String
    var hasSeen: Bool
    
    init(title: String, hasSeen: Bool = false) {
        self.title = title
        self.hasSeen = hasSeen
    }
}
