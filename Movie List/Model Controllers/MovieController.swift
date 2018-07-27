//
//  MovieController.swift
//  Movie List
//
//  Created by Conner on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    func addMovie(movieName: String, isSeen: String) {
        movies.append(Movie(movieName: movieName, isSeen: isSeen))
    }
    
    var movies: [Movie] = []
}
