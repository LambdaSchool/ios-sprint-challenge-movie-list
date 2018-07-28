//
//  MovieController.swift
//  Movie List
//
//  Created by Carolyn Lea on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    var movies: [Movie] = []
    var movie: Movie?

    func toggleHasSeen(for movie: Movie) {
        movie.hasSeen = !movie.hasSeen
    }
    
    func createMovie(with movieName: String) {
        let movie = Movie(movieName: movieName)
        movies.append(movie)
    }
}
