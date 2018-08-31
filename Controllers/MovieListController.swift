//
//  MovieListController.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieList {
    
    // This array will hold users all submitted movies
    var movies: [Movie] = []
    
    
    func addMovie(name: String) {
        
        // This will create a new Movie instance. It will take user input and add it to movies list
        let newMovie = Movie(movieName: name)
        movies.append(newMovie)
    }
}
