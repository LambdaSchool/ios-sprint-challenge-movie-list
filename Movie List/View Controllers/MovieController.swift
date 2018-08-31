//
//  MovieController.swift
//  Movie List
//
//  Created by Welinkton on 8/31/18.
//  Copyright © 2018 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    func createMovie(with name:String){
        
        let movie = Movie(name: name)
        
        movies.append(movie)
    }
    
    private(set) var movies: [Movie] = []
}
