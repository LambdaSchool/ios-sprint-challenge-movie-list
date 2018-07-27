//
//  MovieController.swift
//  Movie List
//
//  Created by Jonathan T. Miles on 7/27/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    func createMovie(title: String, isSeen: Bool = false) {
        let movie = Movie(title: title, isSeen: isSeen)
        movies.append(movie)
    }
    
    var movies: [Movie] = []
    
    func deleteMovie(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        movies.remove(at: index)
    }
    
    func toggleIsSeen(for movie: Movie) {
       movie.isSeen = !movie.isSeen
    }
}
