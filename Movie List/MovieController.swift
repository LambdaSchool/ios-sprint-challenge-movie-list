//
//  MovieController.swift
//  Movie List
//
//  Created by Daniela Parra on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    //create
    func createAMovie (name: String) {
        let movie = Movie(name: name)
        movies.append(movie)
    }
    
    //read
    private(set) var movies: [Movie] = []
    
    //update
    
    
    //delete
    
}
