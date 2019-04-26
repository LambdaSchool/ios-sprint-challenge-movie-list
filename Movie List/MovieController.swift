//
//  MovieController.swift
//  Movie List
//
//  Created by Michael Flowers on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation


class MovieController {
    var movies: [Movie] = []
    
    func createMovie(name title: String){
        let newMovie = Movie(title: title)
        movies.append(newMovie)
    }
    
    func delete(movie: Movie){
//        guard let movieToDelete = 
    }
}
