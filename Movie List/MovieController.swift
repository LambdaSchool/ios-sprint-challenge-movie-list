//
//  MovieController.swift
//  Movie List
//
//  Created by Ufuk Türközü on 13.12.19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    
    var movies: [Movie] = []
    
    func movieWasCreated(title: String) {
        
        let movie = Movie(moviesName: title)
        movies.append(movie)
        
    }
}
