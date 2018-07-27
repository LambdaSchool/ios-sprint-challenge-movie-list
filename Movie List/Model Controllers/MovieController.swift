//
//  MovieController.swift
//  Movie List
//
//  Created by Conner on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    func addMovie(movieName: String, isSeen: String) {
        movies.append(Movie(movieName: movieName, isSeen: isSeen))
    }
    
    func delete(movie: Movie) {
        guard let idx = movies.index(of: movie) else { return }
        movies.remove(at: idx)
    }
    
    func toggleSeenStatus(for movie: Movie) {
        if (movie.isSeen == "Seen") {
            movie.isSeen = "Not seen"
        } else {
            movie.isSeen = "Seen"
        }
    }
    
    var movies: [Movie] = []
}
