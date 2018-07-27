//
//  MovieController.swift
//  Movie List
//
//  Created by David Oliver Doswell on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    func addANewMovie(movie: String) {
        let movie = Movie(title: movie)
        movies.append(movie)
    }
    
    
    private(set) var movies : [Movie] = []
}
