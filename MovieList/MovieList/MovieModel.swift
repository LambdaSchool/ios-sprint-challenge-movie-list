//
//  MovieModel.swift
//  MovieList
//
//  Created by brian vilchez on 7/19/19.
//  Copyright © 2019 brian vilchez. All rights reserved.
//

import Foundation

protocol CreateMovieDelegate {
    func addMovie(_ title: Movie)
}

struct Movie {
    let Name: String
}

class MovieController {
    
    var movies: [Movie]
    
    init(movies:[Movie] = []) {
        self.movies = movies
    }
}

