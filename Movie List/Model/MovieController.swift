//
//  MovieController.swift
//  Movie List
//
//  Created by Rick Wolter on 10/5/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    private(set) var movieList: [Movie] = []
    
    func addMovie(name: String, hasWatched: Bool){
        let movie = Movie(named: name, hasWatched: hasWatched)
        movieList.append(movie)
    }
    
    func deleteMovie(at index: Int){
       
        movieList.remove(at: index)
    }
    
    func changeHasWatched(of movie: Movie){
        movie.hasWatched = !movie.hasWatched
    }
    
    
    
    
    
}
