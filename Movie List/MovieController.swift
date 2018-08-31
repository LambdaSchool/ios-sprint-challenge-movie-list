//
//  MovieController.swift
//  Movie List
//
//  Created by Daniela Parra on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    //create
    func createAMovie (name: String) {
        let movie = Movie(name: name)
        movies.append(movie)
    }
    
    
    //update
    func update(movie: Movie, name: String, hasbeenSeen: Bool) {
        guard let index = movies.index(of: movie) else {return}
        
        //temp movie variable
        var tempMovie = movie
        tempMovie.hasBeenSeen = !hasbeenSeen
        
        movies.remove(at: index)
        movies.insert(movie, at: index)
    }
    
    //delete
    func deleteMovie(movie: Movie) {
        guard let index = movies.index(of: movie) else {return}
        movies.remove(at: index)
    }
    
    //read
    private(set) var movies: [Movie] = []
    
}
