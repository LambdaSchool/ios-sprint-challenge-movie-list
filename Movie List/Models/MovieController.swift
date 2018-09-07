//
//  MovieController.swift
//  Movie List
//
//  Created by Scott Bennett on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    private(set) var movies: [Movie] = []
    
    func createMovie(with name: String, isSeen: Bool) {
        let movie = Movie(name: name, isSeen: false)
        movies.append(movie)
    }
    
    func toggleIsSeen(for movie: Movie) {
        movie.isSeen = !movie.isSeen
    }
    
    func deleteMovie(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        movies.remove(at: index)
    }
    
}
