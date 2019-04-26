//
//  MovieController.swift
//  Movie List
//
//  Created by Alex Ladines on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    var movies: [Movie] = []
    
    //Dummy Data to make sure our table is populated
    init() {
        addMovie(name: "Pineapple Express")
        addMovie(name: "Gladiator")
    }
    
    func addMovie(name:String) {
        let movieToAdd:Movie = Movie(name: name)
        movies.append(movieToAdd)
    }
}
