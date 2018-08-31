//
//  MovieController.swift
//  Movie List
//
//  Created by Ilgar Ilyasov on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    var movies: [Movie] = []
    
    //CRUD
    
    func addMovie(name: String, isSeen: Bool = false) {
        
        let newMovie = Movie(movieName: name, isSeen: isSeen)
        movies.append(newMovie)
    }
    
    func changeStatusOfTheMovie(movie: Movie){
        
        guard let index = movies.index(of: movie) else {return}
        
        if movie.isSeen {
            movies[index].isSeen = false
        } else {
            movies[index].isSeen = true
        }
    }
    
    func deleteMovie(index: Int) {
        
        movies.remove(at: index)
    }
}
