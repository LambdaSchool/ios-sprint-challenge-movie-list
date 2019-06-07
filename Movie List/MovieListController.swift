//
//  MovieListController.swift
//  Movie List
//
//  Created by Jordan Davis on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieListController {
    
    func createMovie(with title: String) {
        let movie = Movie(movie: title)
        movies.append(movie)
    }
    
    //MARK: - Properties
    
    var movies: [Movie] = []
}
