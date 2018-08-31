//
//  MovieController.swift
//  Movie List
//
//  Created by Madison Waters on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    // Create
    func createMovie(title: String) {
        let movie = Movie(title: title)
        movies.append(movie)
    }
    
    // Delete
//    func delete(movie: Movie) {
//    
//        guard let index = movies.index(of: movie) else { return }
//        movies.remove(at: index)
//    }
    
    // Read
    private(set) var movies: [Movie] = []
    
}
