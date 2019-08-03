//
//  Movie.swift
//  Movie List
//
//  Created by Clayton Bonaguidi on 8/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie {
    
    var movie: String
    var hasSeen: Bool
    
    init(movie: String, hasSeen: Bool = false) {
        self.movie = movie
        self.hasSeen = hasSeen
    }
}
