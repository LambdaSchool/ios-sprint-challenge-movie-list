//
//  Movie.swift
//  Movie List
//
//  Created by dc on 2/21/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    let name: String
    var hasBeenSeen: Bool
    
    init(name: String, hasBeenSeen: Bool = false) {
        self.name = name
        self.hasBeenSeen = hasBeenSeen
    }
}
