//
//  MovieController.swift
//  MoviesTry9
//
//  Created by morse on 4/26/19.
//  Copyright © 2019 morse. All rights reserved.
//

import Foundation

class MovieController {
    var movies: [Movie] = []
    
    func createMovie(with title: String) {
        
        let movie = Movie(title: title)
        
        movies.append(movie)
    }
}
