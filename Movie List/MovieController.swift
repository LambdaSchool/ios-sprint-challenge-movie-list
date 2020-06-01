//
//  MovieController.swift
//  Movie List
//
//  Created by Dojo on 5/31/20.
//  Copyright © 2020 Lambda School. All rights reserved.
//

import UIKit

class MovieController {
    var movies: [Movie] = []
    
    func create(name: String) {
        movies.append(Movie.init(name: name))
    }
    
    func deleteMovie(movie: Movie) {
        guard let index = movies.firstIndex(of: movie) else { return }
        movies.remove(at: index)
        print(Movie.self)
    }
}
