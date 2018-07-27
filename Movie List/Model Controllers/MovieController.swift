//
//  MovieController.swift
//  Movie List
//
//  Created by Samantha Gatt on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    var movies: [Movie] = []
    
    func addMovie(title: String) {
        let movie = Movie(title: title)
        movies.append(movie)
    }
}
