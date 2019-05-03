//
//  MovieController.swift
//  Movie List
//
//  Created by Chris Price on 5/3/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    var movies: [Movie] = [Movie]()
    
    init() {
        createMovie(with: "Die Hard")
    }
    
    func createMovie(with movieTitle: String) {
        let movie = Movie(movieTitle: movieTitle)
        
        movies.append(movie)
    }
    
    func toggleWasSeen(for movie: Movie) {
        movie.wasSeen = !movie.wasSeen
     }
}
