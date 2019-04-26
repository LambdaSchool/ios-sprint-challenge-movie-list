//
//  MovieController.swift
//  Movie List
//
//  Created by Thomas Cacciatore on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    var movies: [Movie] = []
    
    func createMovie(with name: String) {
        let movie = Movie(name: name)
        
        movies.append(movie)
    }

    func deleteMovie(movie: Movie) {
        if let indexOfMovie = movies.firstIndex(of: movie) {
            movies.remove(at: indexOfMovie)
        }
    }

}
