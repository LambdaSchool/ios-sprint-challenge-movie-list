//
//  MovieController.swift
//  Movie List
//
//  Created by Jeremy Taylor on 5/4/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    private (set) var movies: [Movie] = []
    
    func createMovie(withTitle title: String) {
        let movie = Movie(title: title)
        movies.append(movie)
    }
    
    func editMovie(at index: Int, withNewTitle title: String) {
        let movie = movies[index]
        movie.title = title
        
    }
    
    func deleteMovie(at index: Int) {
        movies.remove(at: index)
        
    }
}
