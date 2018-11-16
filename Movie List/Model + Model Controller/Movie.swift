//
//  Movie.swift
//  Movie List
//
//  Created by Stuart on 11/16/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    
    let title: String
    var hasSeen: Bool
    
    init(title: String, hasSeen: Bool = true) {
        self.title = title
        self.hasSeen = hasSeen
    }
}
