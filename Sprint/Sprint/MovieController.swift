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
    
   
    func createMovie(name: String, isSeen: Bool) {
        let movie = Movie(name: name, isSeen: isSeen)
            movies.append(movie)
            

    }
    func toggleSeen(movie: Movie) {
        movie.isSeen = !movie.isSeen
    
    }
    
    func deleteMovie(indexPath: Int){  
       movies.remove(at: indexPath)
    }
    
    init() {
        createMovie(name: "Lord of the Rings", isSeen: false)
    }
}
