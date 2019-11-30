//
//  Movie.swift
//  Movie List
//
//  Created by Jeremy Taylor on 11/30/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var hasBeenSeen: Bool
    
    init(name: String, hasBeenSeen: Bool = false) {
        self.name = name
        self.hasBeenSeen = hasBeenSeen
    }
}
