//
//  MovieController.swift
//  Movie List
//
//  Created by Sammy Alvarado on 4/25/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    func createMovie(withTitle title: String) {
        let movie = Movie(movieName: title)
        
        movies.append(movie)
    }
    
    // MARK: Update
    
    func updateHasSeen(forMovie movie: Movie) {
        guard let movieIndex = movies.firstIndex(of: movie) else { return }
        movies[movieIndex].seenOrNot = !movie.seenOrNot
    }
    
    // MARK: Delete
    
    func delete(movie: Movie) {
        guard let index = movies.firstIndex(of: movie) else { return }
        
        movies.remove(at: index)
    }
    
    // MARK: - Properties
    
    private(set) var movies: [Movie] = []
    
}
