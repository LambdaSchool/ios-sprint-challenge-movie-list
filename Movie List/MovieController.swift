//
//  MovieController.swift
//  Movie List
//
//  Created by Alex Shillingford on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    var movies: [Movie] = []
    
    func createMovie(title: String) {
        let movie = Movie(title: title)
        
        movies.append(movie)
    }
}
