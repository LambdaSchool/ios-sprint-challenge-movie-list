//
//  MovieController.swift
//  Movie List
//
//  Created by Hayden Hastings on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    // Create
    func createMovie(name: String) {
        let movie = Movie(name: name)
        
        movies.append(movie)
    }
    
    // Upadate
    func toggleIsSeen(for movie: Movie) {
        var movie = movie
        movie.isSeen = !movie.isSeen
    }
    
    // Delete
    func delete(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        movies.remove(at: index)
    }
    
    // Read
    var movies: [Movie] = []
}
