//
//  MovieController.swift
//  Movie List
//
//  Created by Daniela Parra on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    func createAMovie (name: String, hasBeenSeen: Bool) {
        let movie = Movie(name: name, hasBeenSeen: hasBeenSeen)
        movies.append(movie)
    }
    
    var movies: [Movie] = []
    
}
