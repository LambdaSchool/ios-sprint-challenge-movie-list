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

    // Create
    func createMovie(title: String) {
        let movie = Movie(title: title)
        movies.append(movie)
        
//        saveData()
    }
    
    // Read
    func movieToShow(at index: Int) -> String {
        return movies[index].title
    }
    
    // Update
    func toggleHasSeen (_ movie: Movie) {
        movie.hasSeen = !movie.hasSeen
    }
    
    // Delete
    func deleteMovie(at index: Int) {
        movies.remove(at: index)
        
//        saveData()
    }
    
    func moveRow(at index: Int, to newIndex: Int) {
        let movie = movies.remove(at: index)
        movies.insert(movie, at: newIndex)
        
//        saveData()
    }
    
    private(set) var movies: [Movie] = []
}
