//
//  movie.swift
//  Movie List
//
//  Created by Ry Bautista on 7/19/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

struct Movie {
    var name: String
    var seen: Bool
}
class Model {
    static let shared = Model()
    private init() {}
    private var movies: [String] = []
    
    func addMovie(_ movie: String) {
        movies.append(movie)

    }
    
    func removeMovie(at index: Int) {
        movies.remove(at: index)
    }
    
    func moveMovie(from index: Int, to destinationIndex: Int) {
        let movie = movies.remove(at: index)
        movies.insert(movie, at: destinationIndex)

    }
    
    func movieCount() -> Int {
        return movies.count
    }
    
    func movie(at index: Int) -> String {
        return movies[index]
    }
    
  
   
    }
