//
//  MovieController.swift
//  Movie List
//
//  Created by Chris Price on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    func createMovie(with title: String) {
        let movie = Movie(movie: title)
        movies.append(movie)
    }
    
    func toggleWasSeen(for movie: Movie) {
        movie.wasSeen = !movie.wasSeen
    }
    
    var movies: [Movie] = [Movie]()
    
}
