//
//  MovieController.swift
//  MovieList2
//
//  Created by Diante Lewis-Jolley on 1/18/19.
//  Copyright © 2019 Diante Lewis-Jolley. All rights reserved.
//

import Foundation

class MovieController {
    static let shared = MovieController()
    private init () {}
    var movies: [Movie] = []

    func addMovie(_ movie: String) {
        let newMovie = Movie.init(title: movie)
        movies.append(newMovie)
    }
    func remove(_ movie: Movie) {
        guard let index = movies.index(of: movie ) else { return }
        movies.remove(at: index)
    }
}
