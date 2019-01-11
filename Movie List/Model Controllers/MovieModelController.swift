//
//  MovieModelController.swift
//  Movie List
//
//  Created by Vijay Das on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieModelController {
    static let shared = MovieModelController()
    private init() {}
    private(set) var movies = [Movie]()
    
/*
     need model functions here to:
     addMovie
     removeMovie
     moveMovie
     movieCount
     movieAtIndex
     
*/

    func addMovie(_ movie: String) {
        let movie = Movie(movie: movie)
        movies.append(movie)
    }
    
    
    func removeMovie(movie: Movie) {
        guard let index = movies.index(of: movie) else { return }
        movies.remove(at: index)

    }

    func moveMovie(from index: Int, to destinationIndex: Int) {

        let movie = movies.remove(at: index)

    
    
    
    }
    
    func movieCount() -> Int {
        return movies.count
    }
    
    func movieAtIndex(_ index: Int) -> Movie {
        return movies[index]
    }
    
}
