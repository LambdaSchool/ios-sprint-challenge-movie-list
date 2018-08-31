//
//  MovieController.swift
//  Movie List
//
//  Created by Jason Modisett on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    func createNewMovie(title: String, hasSeen: Bool = false) {
        let movie = Movie(title: title, hasSeen: hasSeen)
        movies.append(movie)
    }

    func toggleHasSeen(_ movie: Movie) {
        movie.hasSeen = !movie.hasSeen
    }

    func deleteMovie(at index: Int) {
        movies.remove(at: index)
    }
 
    var movies: [Movie] = []
}
