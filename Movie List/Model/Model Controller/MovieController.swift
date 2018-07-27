//
//  MovieController.swift
//  Movie List
//
//  Created by Linh Bouniol on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    var movies: [Movie] = []
    
    func createMovie(name: String, isSeen: Bool) {
        let movie = Movie(name: name, isSeen: isSeen)
        movies.append(movie)
    }
    
    func toggleIsSeen(for movie: Movie) {
        movie.isSeen = !movie.isSeen
    }
    
    func delete(movie: Movie) {
        if let index = movies.index(of: movie) {
            movies.remove(at: index)
        }
    }
}
