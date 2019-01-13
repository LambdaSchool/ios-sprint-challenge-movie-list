//
//  ModelController.swift
//  Movie List
//
//  Created by Stuart on 1/12/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    static let shared = MovieController()

    
    func createMovie(title: String) {
        let movie = Movie(title: title)
        movies.append(movie)
    }
    
    func movieToShow(at index: Int) -> String {
        return movies[index].title
    }
    
    func toggleHasSeen (_ movie: Movie) {
        movie.hasSeen = !movie.hasSeen
    }
    
    func deleteMovie(at index: Int) {
        movies.remove(at: index)
        
    }
    
    var movies: [Movie] = []
}
