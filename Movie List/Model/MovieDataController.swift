//
//  MovieData.swift
//  Movie List
//
//  Created by Corey Sessions on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

protocol MovieDataControllerDelegate {
    func updateMovieList(movieName: String, seenMovie: Bool)
}

class MovieDataController {
  var moviesList: [Movie] = []
    
     func addMovieToList(movieToAdd: String, seenMovie: Bool) {
        let newMovie = Movie(movieName: movieToAdd, seenMovie: seenMovie)
        moviesList.append(newMovie)
    }
}

