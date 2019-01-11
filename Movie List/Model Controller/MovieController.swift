//
//  MovieController.swift
//  Movie List
//
//  Created by Paul Yi on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieController {
    private (set) var movies: [Movie] = []
    
    func createMovie(name: String) {
        let movie = Movie(name: name, seen: false)
        movies.append(movie)
    }
    
    func updateMovie(movie: Movie) {
        
        
    }
    
    func deleteMovie(movie: Movie) {
        
    }
}
