//
//  MovieController.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 9/2/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    private(set) var movies: [Movie] = []
    
    // CRUD
    // MARK: - Create movie function
    func createMovie(title: String, hasSeen: Bool = false) {
        let newMovie = Movie(movieTitle: title)
        movies.append(newMovie)
    }
    
    // MARK: - Change status
    func changeStatus(for movie: Movie) {
        
        movie.hasSeen = !movie.hasSeen
    }
    
    // MARK: - Delete movie
    func deleteMovie(index: Int){
        movies.remove(at: index)
    }
    
    
    
}
