//
//  MovieController.swift
//  Movie List
//
//  Created by Daniela Parra on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    //Create a movie model assuming it hasn't been seen.
    func createAMovie (name: String) {
        let movie = Movie(name: name, hasBeenSeen: false)
        movies.append(movie)
    }
    
    //Update movie model .
    func update(movie: Movie) {
        guard let index = movies.index(of: movie) else {return}
        
        //Create temp movie variable.
        let oldStatus = movie.hasBeenSeen
        let newStatus = !oldStatus
        let tempMovie = Movie(name: movie.name, hasBeenSeen: newStatus)
        
        movies.remove(at: index)
        movies.insert(tempMovie, at: index)
    }
    
    //Delete movie model.
    func deleteMovie(movie: Movie) {
        guard let index = movies.index(of: movie) else {return}
        movies.remove(at: index)
    }
    
    //Read.
    private(set) var movies: [Movie] = []
    
}
