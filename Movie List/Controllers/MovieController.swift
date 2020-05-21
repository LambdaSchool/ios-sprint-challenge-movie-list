//
//  MovieController.swift
//  Movie List
//
//  Created by Sean Acres on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    var movies: [Movie] = []
    
    func createMovie(name: String) {
        let movie = Movie(movieName: name)
        movies.append(movie)
    }
    
    func deleteMovie(at indexPath: IndexPath) {
        movies.remove(at: indexPath.row)
    }
    
    func editMovieName(for movie: Movie, newName: String) {
        movie.movieName = newName
    }
    
    func toggleIsSeen(for movie: Movie) {
        movie.isSeen.toggle()
    }
}
