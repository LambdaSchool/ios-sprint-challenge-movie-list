//
//  MovieListController.swift
//  MovieList
//
//  Created by Jordan Davis on 5/3/19.
//  Copyright © 2019 Jordan Davis. All rights reserved.
//

import Foundation

class MovieListController {
    
    init() {
        createMovie(with: "Black Panther")
        createMovie(with: "Never Back Down")
        createMovie(with: "Harlem Nights")
    }
    
    func createMovie(with title: String) {
        let movie = Movie(title: title, isSeen: false)
        
        movies.append(movie)
    }
    
    
    //MARK: -Properties
    
    var movies: [Movie] = []
}
