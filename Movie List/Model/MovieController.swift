//
//  MovieController.swift
//  Movie List
//
//  Created by patelpra on 9/28/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    private(set) var movies: [Movie] = []
    
    func createMovie(with name: String) {
        let movie = Movie(name: name)
        movies.append(movie)
    }
    
    func toggledSeen(at indexPath: IndexPath) {
        self.movies[indexPath.row].isSeen = !self.movies[indexPath.row].isSeen
    }
}
