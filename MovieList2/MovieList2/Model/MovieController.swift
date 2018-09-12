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
    
    // This function is just copying the old cell - Does Not Work
    
//    func toggleIsSeen (for movie: Movie) {
//        print("HEY")
//        movie.isSeen = !(movie.isSeen)
//    }
    
    // create a scratch method.
    func toggleIsSeen(movie: Movie) {
        
        guard let index = movies.index(of: movie) else {return}
        
        let scratchMovie = !movie.isSeen
        let newMovieState = Movie(name: movie.name, isSeen: scratchMovie)
        
        movies.remove(at: index)
        movies.insert(newMovieState, at: index)
    }
    
    
    // DELETE
    func deleteMovie (movie: Movie) {
        guard let index = movies.index(of: movie) else {return}
        movies.remove(at: index)
    }
}
