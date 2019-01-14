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
    
    func createMovie(title: String) {
        let movie = Movie(title: title, seen: false)
        movies.append(movie)
    }
    
    func updateMovie(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        
        let oldStatus = movie.seen
        let newStatus = !oldStatus
        let tempMovie = Movie(title: movie.title, seen: newStatus)
        
        movies.remove(at: index)
        movies.insert(tempMovie, at: index)
        
    }
    
    func deleteMovie(at index: Int) {
        movies.remove(at: index)
    }
    
    func movieCount() -> Int {
        return movies.count
    }
    
    func movie(at index: Int) -> Movie {
        return movies[index]
    }
    
    func edit(movie: String, at index: Int){
        let newMovie = Movie(title: movie)
        movies[index] = newMovie
    }
    
    func moveMovie(from index: Int, to destinationIndex: Int) {
        let movie = movies[index]
        let movieAtDestination = movies[destinationIndex]
        movies[index] = movieAtDestination
        movies[destinationIndex] = movie
    }
    
}
