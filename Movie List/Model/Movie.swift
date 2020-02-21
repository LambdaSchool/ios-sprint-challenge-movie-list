//
//  Movie.swift
//  Movie List
//
//  Created by Shawn Gee on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class Movie: Codable {
    var name: String
    var hasBeenSeen = false
    
    init(name: String, hasBeenSeen: Bool) {
        self.name = name
        self.hasBeenSeen = hasBeenSeen
    }
}
