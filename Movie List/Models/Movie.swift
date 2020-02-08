//
//  Movie.swift
//  Movie List
//
//  Created by Chris Price on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie: Codable {
    var movie: String
    var wasSeen: Bool
    
    init(movie: String, wasSeen: Bool = false) {
        self.movie = movie
        self.wasSeen = wasSeen
    }
    
}
