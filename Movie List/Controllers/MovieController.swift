//
//  MovieController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    private (set) var movies: [Movie] = []
    
    // Create a new movie
    
    func create(title: String) {
        let movie = Movie(title: title, seen: false)
        movies.append(movie)
    }
    
    // Delete a movie
    func delete(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        
        // We have a movie to delete
        movies.remove(at: index)
    }
}
