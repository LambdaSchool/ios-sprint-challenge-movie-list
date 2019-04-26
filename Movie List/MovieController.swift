//
//  MovieController.swift
//  Movie List
//
//  Created by Kobe McKee on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    var movies: [Movie] = []
    
    func addMovie(title: String, hasBeenSeen: Bool) {
        let movie = Movie(title: title)
        
        movies.append(movie)
    }
    
    func deleteMovie(movieToDelete: Movie) {
        if let movieIndex = movies.firstIndex(of: movieToDelete) {
            movies.remove(at: movieIndex)
        }
    }
    
    
    
    
}
