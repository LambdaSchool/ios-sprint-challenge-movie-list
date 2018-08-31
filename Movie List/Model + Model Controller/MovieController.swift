//
//  MovieController.swift
//  Movie List
//
//  Created by Jason Modisett on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    func createNewMovie(title: String, hasSeen: Bool = true) {
        let movie = Movie(title: title, hasSeen: hasSeen)
        movies.append(movie)
    }

    func toggleHasSeen(_ movie: Movie) {
        movie.hasSeen = !movie.hasSeen
    }

    func deleteMovie(_ movie: Movie) {
        for i in 0...movies.count {
            if movies[i].title == movie.title {
                movies.remove(at: i)
            }
        }
    }
 
    var movies: [Movie] = []
}
