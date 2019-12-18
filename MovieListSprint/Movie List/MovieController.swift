//
//  MovieController.swift
//  Movie List
//
//  Created by Taylor Lyles on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    var movies: [Movies] = []
    
    func createMovie(movieTitle: String, isSeen: Bool = true) {
        let movie = Movies(movieTitle: movieTitle)
        
        movies.append(movie)
    }
    
    func updateMovie(movieToBeUpdated: Movies, isSeen: Bool) {
        guard let index = movies.firstIndex(of: movieToBeUpdated) else { return }
        
        movies[index].isSeen = isSeen
    }
    
    func deleteMovie(movieToBeDeleted: Movies) {
        guard let index = movies.firstIndex(of: movieToBeDeleted) else { return }
        
        movies.remove(at: index)
    }
}
