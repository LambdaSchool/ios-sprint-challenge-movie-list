//
//  MovieController.swift
//  Movie List
//
//  Created by Alex Perse on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    init() {
        //I'm going to put tests here as sanity check
    }
    
    var movies: [Movie] = [] //An array of movies
    
    
    func createMovie(movieName: String) {
        let movie = Movie(movieName: movieName)
        movies.append(movie)
    }
}
