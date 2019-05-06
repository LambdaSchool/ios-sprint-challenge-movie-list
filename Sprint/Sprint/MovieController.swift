//
//  MovieController.swift
//  Sprint
//
//  Created by Stephanie Bowles on 5/6/19.
//  Copyright © 2019 Stephanie Bowles. All rights reserved.
//

import Foundation

class MovieController {
    private (set) var movies: [Movie] = []
    
   
    func createMovie(name: String) {
            let movie = Movie(name: name)
            movies.append(movie)
            

    }
    func toggleSeen(movie: Movie) {
        movie.isSeen = !movie.isSeen
        
    }
    
    init() {
        createMovie(name: "lord of the ringsprint")
    }
}
