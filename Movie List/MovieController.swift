//
//  MovieController.swift
//  Movie List
//
//  Created by Stuart on 11/16/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    
    
    func addNewMovie(title: String, hasSeen: Bool = true) {
        let movie = Movie(title: title, hasSeen: hasSeen)
        movies.append(movie)
    }
    
    func deleteMovie(at index: Int) {
        movies.remove(at: index)
    }
    
    var movies: [Movie] = []
    
}
