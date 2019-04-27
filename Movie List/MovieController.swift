//
//  MovieController.swift
//  Movie List
//
//  Created by Kobe McKee on 4/27/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


class MovieController {
    
    var movies: [Movie] = []
    

    func addMovie(title: String) {
        let newMovie = Movie(title: title, haveSeen: false)
        movies.append(newMovie)
    }
    
    func deleteMovie(movieIndex: Int) {
        movies.remove(at: movieIndex)
    }
    
    
    
}
