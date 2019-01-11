//
//  MovieController.swift
//  Movie List
//
//  Created by Jocelyn Stuart on 1/11/19.
//  Copyright © 2019 Lambda School. All rights reserved.
//

import Foundation

class MovieController {
    static let shared = MovieController()
    var movies: [Movie] = []
    var seen = false
    
    func addMovie(textMovie: String) {
        seen = false
        let movie = Movie(text: textMovie)
        movies.append(movie)
    }
    
    func removeMovie(movie: Movie) {
        // fill this in
        guard let index = movies.index(of: movie) else {return}
        movies.remove(at: index)
    }
    
    func moveMovie(from index: Int, to destinationIndex: Int) {
        // fill this in
        //guard let index = items.index(of: IndexPath.row) else {return}
        //items.move(at: index)
    }
    
    func movieCount() -> Int {
        return movies.count
    }
    
    /*func movie(at index: Int) -> Movie {
        return movies[index]
    }*/
}
