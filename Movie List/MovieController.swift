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
        //create newMovie & add it to array of movies
        let newMovie = Movie(title: title, hasSeen: false)
        movies.append(newMovie)
    }
    
    func deleteMovie(movie: Movie) {
        // take an existing movie and remove it from the array of movies
        guard let movieIndex = movies.index(of: movie) else { return }
        movies.remove(at: movieIndex)
    }
    
    func toggleHasSeen(movie: Movie) {
        // update movie to hasSeen or hasNotSeen
        var updatedMovie = movie
        updatedMovie.hasSeen = !updatedMovie.hasSeen
        
        // replace the oldMovie of the same index with the updatedMovie
        guard let movieIndex = movies.index(of: movie) else { return }
        movies[movieIndex] = updatedMovie
    }
    
    
}
