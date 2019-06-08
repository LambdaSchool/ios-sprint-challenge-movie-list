//
//  MovieController.swift
//  Movie List
//
//  Created by Kat Milton on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


class MovieController {
    
    var movies: [Movie] = []
    
    // A function is required to add movies to an empty array.
    func updateMovies(withName: String) {
        let newMovie = Movie(name: withName)
        movies.append(newMovie)
    }
    
    
    // A function is needed to toggle the seen button.
    func toggleSeen(for movie: Movie) {
        let movieToggled = movie
        var movieSeenStatus = movieToggled.seen
            movieSeenStatus.toggle()
    }
    
    func deleteMovie(movieToDelete: Movie) {
        if let index = movies.firstIndex(of: movieToDelete) {
            movies.remove(at: index)
        }
    }
}
