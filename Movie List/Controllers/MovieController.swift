//
//  MovieController.swift
//  Movie List
//
//  Created by Scott Bennett on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    private(set) var movies: [Movie] = []
    
    func Create(with name: String, watched: Bool) {
        let movie = Movie(name: name, watched: watched)
        movies.append(movie)
    }
}
