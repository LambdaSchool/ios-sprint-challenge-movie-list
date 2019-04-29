//
//  MovieController.swift
//  Movie List
//
//  Created by Kobe McKee on 4/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


class MovieController {
    
    var movies: [Movie] = []
   
    func createMovie(title: String) {
        let newMovie = Movie(title: title, hasSeen: false)
        movies.append(newMovie)
    }
    
    func deleteMovie(movie: Movie) {
        guard let movieIndex = movies.index(of: movie) else { return }
        movies.remove(at: movieIndex)
    }
    
    func toggleHasSeen(movie: Movie) {
        var updatedMovie = movie
        updatedMovie.hasSeen = !updatedMovie.hasSeen
        
        if let movieIndex = movies.index(of: movie) {
            movies[movieIndex] = movie
        }

    }
    
    
}
