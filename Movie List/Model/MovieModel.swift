//
//  MovieModel.swift
//  Movie List
//
//  Created by Corey Sessions on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class Movie {
    var movieName: String
    var seenMovie: Bool
    
    init(movieName: String, seenMovie: Bool = false) {
        self.movieName = movieName
        self.seenMovie = seenMovie
    }
}
