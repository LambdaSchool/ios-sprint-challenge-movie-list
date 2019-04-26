//
//  MovieController.swift
//  Movie List
//
//  Created by Ryan Murphy on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


class MovieController {
    var movies: [Movie] = []
    
    func createMovie(withMovie name: String) {
        let newMovie = Movie(name: name)
    
        movies.append(newMovie)
    
    }

    
 
}
