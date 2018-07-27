//
//  MovieController.swift
//  Movie List
//
//  Created by Samantha Gatt on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    var movies: [Movie] = []
    
    // Function to add a movie
    func addMovie(title: String, isSeen: Bool) {
        let movie = Movie(title: title, isSeen: isSeen)
        movies.append(movie)
    }
    
    // Function to change the value for isSeen attribute of an instance of Movie
    func toggleIsSeen(forMovie: Movie) {
        forMovie.isSeen = !forMovie.isSeen
    }
}
