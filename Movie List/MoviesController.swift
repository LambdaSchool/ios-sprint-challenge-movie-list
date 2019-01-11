//
//  MoviesController.swift
//  Movie List
//
//  Created by Nathanael Youngren on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MoviesController {
    static let shared = MoviesController()
    private init() {}
    
    private(set) var movies = [Movie]()
    
    func addMovie(_ movie: String) {
        let movieToAdd = Movie(title: movie)
        movies.append(movieToAdd)
    }
    
    func removeMovie(at index: Int) {
        movies.remove(at: index)
    }
    
    func moveItem(from index: Int, to destinationIndex: Int) {
        let movieToMove = movies[index]
        let moveMovieHere = movies.index(after: destinationIndex)
        movies.insert(movieToMove, at: moveMovieHere)
        movies.remove(at: index)
    }
    
    func movieCount() -> Int {
        return movies.count
    }
    
    func movie(at index: Int) -> String {
        return movies[index].title
    }
}
