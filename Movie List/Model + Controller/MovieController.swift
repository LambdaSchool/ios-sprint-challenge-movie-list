//
//  MovieController.swift
//  Movie List
//
//  Created by Welinkton on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    var movies: [Movie] = []
    
    func  createMovie(name: String, isSeen:Bool) {
        let movie = Movie(name: name, isSeen: false)
        movies.append(movie)
    }
    
    func deleteMovie(movie:Movie) {
        guard let index = movies.index(of: movie) else {return}
        movies.remove(at: index)
    }
}
