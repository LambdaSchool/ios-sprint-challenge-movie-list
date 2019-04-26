//
//  MovieController.swift
//  Movie List
//
//  Created by Anesa Krnic on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    var movies: [Movie] = []
    
    func create(name: String) {
        movies.append(Movie.init(name: name))
    }
}
