//
//  MovieController.swift
//  Movie
//
//  Created by Diante Lewis-Jolley on 4/26/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class MovieController {

    var movies: [Movie] = []

    func create(movie: String) {
        let newMovie = Movie(movie: movie)

        movies.append(newMovie)

    }

    func delete(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        movies.remove(at: index)

    }

    func update(movie: Movie, film: String) {
        guard let index = movies.index(of: movie) else { return }
        var movieIndex = movies[index]

        movieIndex.movie = film

    }
}
