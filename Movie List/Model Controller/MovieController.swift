//
//  MovieController.swift
//  Movie List
//
//  Created by Paul Yi on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import UIKit

class MovieController {
    private (set) var movies: [Movie] = []
    
    func createMovie(name: String) {
        let movie = Movie(name: name, seen: false)
        movies.append(movie)
    }
    
    func updateMovie(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        
        let oldStatus = movie.seen
        let newStatus = !oldStatus
        let tempMovie = Movie(name: movie.name, seen: newStatus)
        
        movies.remove(at: index)
        movies.insert(tempMovie, at: index)
        
    }
    
    func deleteMovie(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        movies.remove(at: index)
    }
    
//    func moveItem(from index: Int, to destinationIndex: Int) {
//        let movie = movies[index]
//        let movieAtDestination = movies[destinationIndex]
//        movies[index] = movieAtDestination
//        movies[destinationIndex] = movie
//    }
    
}
