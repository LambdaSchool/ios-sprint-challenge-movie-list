//
//  MovieController.swift
//  Movie List
//
//  Created by Farhan on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController{
    
    //CRUD
    
    private(set) var movies: [Movie] = []
    
    func createMovie(name: String, seenState: Bool) {
        
        let movie = Movie(title: name, isSeen: seenState)
        
        movies.append(movie)
    }
    
    func toggleIsSeen (for movie: Movie) {
        movie.isSeen = !(movie.isSeen)
    }

    
}
