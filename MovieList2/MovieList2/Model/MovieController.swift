//
//  MovieController.swift
//  MovieList2
//
//  Created by Welinkton on 9/7/18.
//  Copyright © 2018 Jerrick Warren. All rights reserved.
//

import Foundation

class MovieController {
    
    // CRUD
    
    // READ and CREATE
    
    private(set) var movies: [Movie] = []
    
    func createAMovie (name: String, isSeen: Bool){
        let movie = Movie(name: name, isSeen: false)
        movies.append(movie)
    }
    
    // UPDATE
    
    func toggleIsSeen (for movie: Movie) {
        guard case movie.isSeen = !(movie.isSeen) else {return}
    }
    
    // DELETE
    func deleteMovie (movie: Movie) {
        guard let index = movies.index(of: movie) else {return}
        movies.remove(at: index)
    }
}
