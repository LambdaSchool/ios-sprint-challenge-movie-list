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
    var hasSeen: Bool
    
    init(name: String, hasSeen: Bool = false) {
        self.name = name
        self.hasSeen = hasSeen
    }
}
