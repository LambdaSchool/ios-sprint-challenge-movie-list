//
//  Movie.swift
//  Movie List
//
//  Created by Sean Acres on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var movieName: String
    var isSeen: Bool
    
    init(movieName: String, isSeen: Bool = false) {
        self.movieName = movieName
        self.isSeen = isSeen
    }
}
