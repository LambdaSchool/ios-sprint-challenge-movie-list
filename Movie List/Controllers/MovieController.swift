//
//  MovieController.swift
//  Movie List
//
//  Created by Joshua Rutkowski on 11/24/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    var movies: [Movie] = []
    
    func addMovie(name:String) {
        let movie = Movie(movieName: name)
        movies.append(movie)
    }
    
    func deleteMovie(at indexPath: IndexPath) {
        movies.remove(at: indexPath.row)
    }
    
    func toggleIsSeen(for movie: Movie) {
        movie.isSeen.toggle()
    }
    //If time is available, implement editMovieName here...
}
