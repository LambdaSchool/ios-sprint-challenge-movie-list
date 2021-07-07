//
//  MovieController.swift
//  Movie List
//
//  Created by Ryan Murphy on 4/26/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

var movies: [Movie] = []
class MovieController {
    
    // creates data source for tableview
    func createMovie(withMovie name: String)  {
        let name = Movie(name: name)
        
        movies.append(name)
        
      
        // creates element and appends data source
    }
    
    
}
