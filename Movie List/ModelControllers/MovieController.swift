//
//  MovieController.swift
//  Movie List
//
//  Created by De MicheliStefano on 27.07.18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    func create(title: String, seen: Bool = false) {
        let movie = Movie(title: title, seen: seen)
        movies.append(movie)
    }
    
    func delete(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        movies.remove(at: index)
    }
    
    func toggleSeen(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        var movie = movies[index]
        movie.seen = !movie.seen
    }
    
    private(set) var movies: [Movie] = []
    
}
