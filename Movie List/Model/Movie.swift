//
//  Movie.swift
//  Movie List
//
//  Created by Aaron Cleveland on 12/13/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var hasSeen: Bool = false
    
    init(name: String, hasSeen: Bool) {
        self.name = name
        self.hasSeen = hasSeen
    }
}
