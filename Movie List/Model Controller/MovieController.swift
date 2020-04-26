//
//  MovieController.swift
//  Movie List
//
//  Created by Hannah Bain on 4/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    // MARK: Create
    
    func createMovie(withTitle title: String) {
        let movie = Movie(title: title)
        
        movies.append(movie)
    }
    
    // MARK: Update
    
    func updateHasSeen(forMovie movie: Movie) {
        guard let movieIndex = movies.firstIndex(of: movie) else { return }
        movies[movieIndex].hasSeen = !movie.hasSeen
    }
    
    // MARK: Delete
    
    func delete(movie: Movie) {
        guard let index = movies.firstIndex(of: movie) else { return }
        
        movies.remove(at: index)
    }
    
    // MARK: - Properties
    
    private(set) var movies: [Movie] = []
}


