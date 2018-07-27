//
//  MovieController.swift
//  Movie List
//
//  Created by Lisa Sampson on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    func createMovie(withName movie: String) {
        let movie = Movie(movie: movie)
        
        movies.append(movie)
    }
    
    func toggleIsSeen(for movie: Movie) {
        if movie.isSeen == false {
            movie.isSeen = true
        } else {
            movie.isSeen = false
        }
    }
    
    private(set) var movies: [Movie] = []
}
