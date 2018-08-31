//
//  MovieController.swift
//  Movie List
//
//  Created by Moin Uddin on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation


class MovieController {
    
    func createNewMovie(title: String, seen: Bool = false) {
        let movie = Movie(title: title, seen: seen)
        movies.append(movie)
    }
    
    func delete(movie: Movie) {
        //guard let index = movies.index(of: movie) else { return }
        //movies.remove(at: index)
    }
    
    func toggleSeen(movie: Movie) {
        movie.seen = !movie.seen
        print(movie.seen)
    }
    
    
    private(set) var movies: [Movie] = []
}
