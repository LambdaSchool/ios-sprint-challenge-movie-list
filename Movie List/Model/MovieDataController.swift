//
//  MovieData.swift
//  Movie List
//
//  Created by Corey Sessions on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieDataController {
  var moviesList: [Movie] = []
    
     func addMovieToList(movieToAdd: String, seenMovie: Bool) {
        let newMovie = Movie(movieName: movieToAdd, seenMovie: seenMovie)
        moviesList.append(newMovie)
    }
    
    func updateMovie(movie: Movie, name: String) {
        guard let index = moviesList.firstIndex(of: movie) else { return }
        moviesList[index].movieName = name
    }
    
    func removeMovie(movie: Movie) {
        guard let index = moviesList.firstIndex(of: movie) else { return }
        moviesList.remove(at: index)
    }
    
    func toggleSeenMovie(indexPath: IndexPath) {
        self.moviesList[indexPath.row].seenMovie.toggle()
    }
    
}

