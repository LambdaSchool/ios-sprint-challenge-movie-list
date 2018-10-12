//
//  MovieController.swift
//  Movie List
//
//  Created by Jordy on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {

    var movies: [Movie] = []

    func createNewMovie(with name: String) {
        let movie = Movie(name: name)
        movies.append(movie)
    }
}
