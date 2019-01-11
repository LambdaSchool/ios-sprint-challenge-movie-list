//
//  MovieController.swift
//  Movie List
//
//  Created by Michael Flowers on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    //create share instance
    static let shared = MovieController()
    
    //crate data source of truth
    var movies = [Movie]()
    
    //MARK:- Crud Functions
    
    //add movie
    func addMovie(with title: String){
        let newMovie = Movie(title: title)
        movies.append(newMovie)
    }
    
    //delete movie
    func delete(movie: Movie){
        //get the index
        guard let index = movies.index(of: movie) else { return }
        
        //remove index from the array
        movies.remove(at: index)
    }
    
    //edit movie - will have to change struct movie to class movie and implement equatable protocols
    func edit(movie: Movie, newTitle: String){
        movie.title = newTitle
    }
}
