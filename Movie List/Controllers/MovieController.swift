//
//  MovieController.swift
//  Movie List
//
//  Created by Kat Milton on 6/7/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation
protocol MovieControllerDelegate: class {
    func addMovie(movieToAppend: String)
}

class MovieController {
    
    init() {
        updateMovies()
    }
    
    var movies: [Movie] = []
    
    var delegate: MovieControllerDelegate?
    
    // A function is required to add movies to an empty array.
    func updateMovies() {
        let film: Movie? = nil
        if let newMovie = film {
            movies.append(newMovie)
        } else {
            return
        }
        
//        for movie in 0..<movies.count {
//
//            movies.append(mo)
//        }
//    func updateMovies(movieToUpdate: Movie, seen: Bool = false) {
//        for film in 0..<movies.count {
//            let
//        }
//
    
//        _ = movieToUpdate
//        movies.append(movieToUpdate)
    }
    
    
    // A function is needed to toggle the seen button.
//    func toggleSeen(for movie: Movie) {
//            movie.seen.toggle()
//    }
    
    func deleteMovie(movieToDelete: Movie) {
        if let index = movies.firstIndex(of: movieToDelete) {
            movies.remove(at: index)
        }
    }
}
