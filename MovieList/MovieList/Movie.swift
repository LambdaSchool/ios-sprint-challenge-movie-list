//
//  Movie.swift
//  MovieList
//
//  Created by Rohan Taylor on 12/13/19.
//  Copyright © 2019 Rohan Taylor. All rights reserved.
//

import Foundation

class Movie {
    var name: String
    var beenSeen: Bool = false
    
    init(name: String, beenSeen: Bool) {
        self.name = name
        self.beenSeen = beenSeen
    }
}
