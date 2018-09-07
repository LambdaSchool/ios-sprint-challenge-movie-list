//
//  File.swift
//  Movie List
//
//  Created by Madison Waters on 9/7/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    private(set) var movies: [Movie] = []
    
    func createMovie(title: String, hasSeen: Bool) {
        let movie = Movie(title: title, hasSeen: hasSeen)
        
        movies.append(movie)
    }
    
    func toggleHasSeen(for movie: Movie) {
        movie.hasSeen = !movie.hasSeen
        
    }
}
