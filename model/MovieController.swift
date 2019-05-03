//
//  MovieController.swift
//  Movie List
//
//  Created by Brian Vilchez on 5/2/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    // MARK: Properties
    var movies: [Movie] = []
    
    
    /// adds movie to array of type movie
    func addMovie(withTitle title: String){
        let movie = Movie(movie: title)
        movies.append(movie)
        
    }
    
    /// deletes selected movie from the movies array
    func deleteMovie(withTitle title: Movie){
        if let index = movies.firstIndex(of:title) {
            movies.remove(at: index)
          
        }
            
            }
        
    }
    

