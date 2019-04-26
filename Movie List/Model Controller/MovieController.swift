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
        //get the movie at it's index
        guard let movieToDelete = movies.index(of: movie) else { return }
        
        //now that we have the index of movie, we can use that to remove  it from the array
        movies.remove(at: movieToDelete)
    }
    
}
