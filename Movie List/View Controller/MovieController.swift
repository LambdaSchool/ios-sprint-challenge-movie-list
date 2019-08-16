//
//  MovieController.swift
//  Movie List
//
//  Created by Uptiie on 8/16/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    var movies: [Movie] = []
    
    func createMovie(movie: Movie) {
        let newMovie = Movie(title: movie.title)
        movies.append(newMovie)
    }
    
    func updateMovie(movie: Movie, data: Data, title: String) {
        guard let index = movies.firstIndex(of: movie) else { return }
        movies[index]
    }
}
